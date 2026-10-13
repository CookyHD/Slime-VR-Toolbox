@tool
extends CommandServerTool

## Open a FlatBuffers schema and read the issues the highlighter already stored.
##
## ScriptEditor.open_file() is not bound to GDScript. The FileSystem dock's
## item_activated handler is the path EditorNode uses for text files, including
## .fbs once it is in docks/filesystem/textfile_extensions.
##
## Highlighting parses a line when Godot draws it. syntax_error records that
## line, and parse_line drops the previous rows for the line first. A tab that
## is already showing its schema can be read at once. A tab that was just
## opened is read after the next paint.


func get_command_name() -> String:
	return "FBS_DIAGNOSE"


func get_description() -> String:
	return "Open a .fbs schema and report the syntax issues the highlighter has stored."


func get_usage() -> String:
	return "FBS_DIAGNOSE <res://path.fbs>"


func get_input_schema() -> Dictionary:
	return {
		"type": "object",
		"properties": {
			"path": {
				"type": "string",
				"description": "res:// or user:// path to a .fbs schema",
			},
		},
		"required": ["path"],
		"additionalProperties": false,
	}


func arguments_from_line( line:String, _tail:String ) -> Dictionary:
	return {&"path": line.strip_edges()}


var _paint_on_done:Callable = Callable()
var _paint_path:String = ""
var _in_flight:bool = false


func begin_execute(
		arguments:Dictionary,
		_context:Dictionary,
		on_done:Callable
) -> void:
	if _in_flight:
		if on_done.is_valid():
			on_done.call( result_from_text( "ERROR: FBS_DIAGNOSE busy" ) )
		return
	var prepared:Dictionary = _prepare( path_line_from_arguments( arguments ) )
	if prepared.has( &"error" ):
		if on_done.is_valid():
			on_done.call( result_from_text( str( prepared[&"error"] ) ) )
		return
	if prepared.get( &"wait", false ) == true:
		_in_flight = true
		_paint_on_done = on_done
		_paint_path = str( prepared[&"path"] )
		_schedule_read()
		return
	if on_done.is_valid():
		on_done.call( result_from_text( _read_issues( str( prepared[&"path"] ) ) ) )


func _execute_line( args:String, _context:Dictionary ) -> String:
	var prepared:Dictionary = _prepare( args )
	if prepared.has( &"error" ):
		return str( prepared[&"error"] )
	return _read_issues( str( prepared[&"path"] ) )


func _prepare( args:String ) -> Dictionary:
	var file_path:String = args.strip_edges()
	if file_path.is_empty():
		return { &"error": "ERROR: FBS_DIAGNOSE requires a path. Usage: " + get_usage() }
	if not file_path.begins_with( "res://" ) \
			and not file_path.begins_with( "user://" ):
		return { &"error": "ERROR: Path must be res:// or user:// (got '%s')" % file_path }
	if file_path.get_extension().to_lower() != "fbs":
		return { &"error": "ERROR: Expected .fbs: " + file_path }
	if not FileAccess.file_exists( file_path ):
		return { &"error": "ERROR: Schema not found: " + file_path }

	var was_open:bool = _tab_is_open( file_path )
	var dock:FileSystemDock = EditorInterface.get_file_system_dock()
	if not is_instance_valid( dock ):
		return { &"error": "ERROR: FileSystem dock is not available" }
	dock.navigate_to_path( file_path )
	if not _activate_path( dock, file_path ):
		return { &"error": "ERROR: FileSystem dock has no row for " + file_path }
	EditorInterface.set_main_screen_editor( "Script" )

	var tab:Dictionary = _current_tab( file_path )
	if tab.has( &"error" ):
		return tab
	var text_edit:TextEdit = tab[&"text_edit"]
	var had_schema:bool = _is_schema_highlighter( text_edit.get_syntax_highlighter() )
	var highlighter:SyntaxHighlighter = _schema_highlighter( text_edit )
	if highlighter == null:
		return { &"error": "ERROR: FlatBuffers schema highlighter is not available for " + file_path }
	var wait:bool = not ( was_open and had_schema and _has_painted( highlighter ) )
	if wait:
		text_edit.queue_redraw()
	return { &"path": file_path, &"wait": wait }


func _activate_path( dock:Node, file_path:String ) -> bool:
	var tree:Tree = _find_tree( dock )
	if is_instance_valid( tree ):
		var selected:TreeItem = tree.get_selected()
		if selected != null and str( selected.get_metadata( 0 ) ) == file_path:
			tree.item_activated.emit()
			return true

	var files:ItemList = _find_item_list( dock )
	if not is_instance_valid( files ):
		return false
	for idx:int in files.item_count:
		if str( files.get_item_metadata( idx ) ) == file_path:
			files.item_activated.emit( idx )
			return true
	return false


func _current_tab( file_path:String ) -> Dictionary:
	var script_editor:ScriptEditor = EditorInterface.get_script_editor()
	if not is_instance_valid( script_editor ):
		return { &"error": "ERROR: Script editor is not available" }
	var current:ScriptEditorBase = script_editor.get_current_editor()
	if not is_instance_valid( current ):
		return { &"error": "ERROR: Script editor did not open a tab for " + file_path }
	var base:Control = current.get_base_editor()
	if not base is TextEdit:
		return { &"error": "ERROR: Opened tab is not a text editor for " + file_path }
	var edited:String = _edited_path( current )
	if not edited.is_empty() and edited != file_path:
		return { &"error": "ERROR: Opened tab does not match " + file_path }
	if edited.is_empty():
		var text_edit:TextEdit = base as TextEdit
		var shown:String = text_edit.get_text().replace( "\r\n", "\n" ).strip_edges()
		var disk:String = FileAccess.get_file_as_string( file_path ).replace( "\r\n", "\n" ).strip_edges()
		if shown != disk:
			return { &"error": "ERROR: Opened tab does not match " + file_path }
	return { &"text_edit": base as TextEdit }


func _read_issues( file_path:String ) -> String:
	var tab:Dictionary = _current_tab( file_path )
	if tab.has( &"error" ):
		return str( tab[&"error"] )
	var text_edit:TextEdit = tab[&"text_edit"]
	var highlighter:SyntaxHighlighter = _schema_highlighter( text_edit )
	if highlighter == null:
		return "ERROR: FlatBuffers schema highlighter is not available for " + file_path
	var parser:Object = highlighter.get( "parser" )
	if parser == null or not parser.has_method( &"format_issues" ):
		return "ERROR: Schema highlighter has no issue list for " + file_path
	parser.call( &"prune_issues", text_edit.get_line_count() )
	var issue_text:String = str( parser.call( &"format_issues" ) )
	var issue_count:int = 0 if issue_text.is_empty() else issue_text.split( "\n" ).size()
	var header:String = "OK: FBS_DIAGNOSE %s lines=%d issues=%d" % [
		file_path,
		text_edit.get_line_count(),
		issue_count,
	]
	if issue_text.is_empty():
		return header
	return header + "\n" + issue_text


func _schedule_read() -> void:
	var err:int = RenderingServer.frame_post_draw.connect( _on_painted, CONNECT_ONE_SHOT )
	if err != OK:
		_finish_paint( "ERROR: FBS_DIAGNOSE could not wait for the editor to paint" )


func _on_painted() -> void:
	var path:String = _paint_path
	_finish_paint( _read_issues( path ) )


func _finish_paint( reply:String ) -> void:
	var done:Callable = _paint_on_done
	_paint_on_done = Callable()
	_paint_path = ""
	_in_flight = false
	if done.is_valid():
		done.call( result_from_text( reply ) )


func _tab_is_open( file_path:String ) -> bool:
	var script_editor:ScriptEditor = EditorInterface.get_script_editor()
	if not is_instance_valid( script_editor ) \
			or not script_editor.has_method( &"get_open_script_editors" ):
		return false
	var editors:Array = script_editor.get_open_script_editors()
	for ed_v:Variant in editors:
		if not ed_v is Node:
			continue
		var ed:Node = ed_v
		if _edited_path( ed ) == file_path:
			return true
	return false


func _edited_path( editor:Node ) -> String:
	if not editor.has_method( &"get_edited_resource" ):
		return ""
	var res_v:Variant = editor.call( &"get_edited_resource" )
	if not res_v is Resource:
		return ""
	var res:Resource = res_v
	return res.resource_path


func _has_painted( highlighter:SyntaxHighlighter ) -> bool:
	var dict_v:Variant = highlighter.get( &"dict" )
	if not dict_v is Dictionary:
		return false
	var colours:Dictionary = dict_v
	return not colours.is_empty()


func _schema_highlighter( text_edit:TextEdit ) -> SyntaxHighlighter:
	var current:SyntaxHighlighter = text_edit.get_syntax_highlighter()
	if _is_schema_highlighter( current ):
		return current
	if FlatBuffersPlugin._prime == null or FlatBuffersPlugin._prime.highlighter == null:
		return null
	var created:EditorSyntaxHighlighter = FlatBuffersPlugin._prime.highlighter._create()
	if not _is_schema_highlighter( created ):
		return null
	text_edit.set_syntax_highlighter( created )
	return created


func _is_schema_highlighter( highlighter:SyntaxHighlighter ) -> bool:
	if highlighter == null:
		return false
	var script:Script = highlighter.get_script()
	if script == null:
		return false
	return script.resource_path.get_file() == "schema_highlighter.gd"


func _find_tree( node:Node ) -> Tree:
	if node is Tree:
		return node
	for child:Node in node.get_children():
		var found:Tree = _find_tree( child )
		if is_instance_valid( found ):
			return found
	return null


func _find_item_list( node:Node ) -> ItemList:
	if node is ItemList:
		return node
	for child:Node in node.get_children():
		var found:ItemList = _find_item_list( child )
		if is_instance_valid( found ):
			return found
	return null
