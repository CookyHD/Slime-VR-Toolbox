@tool
extends CommandServerTool

## Open a FlatBuffers schema in the script editor.
##
## ScriptEditor.open_file() is not bound to GDScript. The FileSystem dock's
## item_activated handler is the path EditorNode uses for text files, including
## .fbs once it is in docks/filesystem/textfile_extensions.


func get_command_name() -> String:
	return "FBS_DIAGNOSE"


func get_description() -> String:
	return "Open a .fbs schema in the script editor. Parse results come later."


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


func _execute_line( args:String, _context:Dictionary ) -> String:
	var file_path:String = args.strip_edges()
	if file_path.is_empty():
		return "ERROR: FBS_DIAGNOSE requires a path. Usage: " + get_usage()
	if not file_path.begins_with( "res://" ) \
			and not file_path.begins_with( "user://" ):
		return "ERROR: Path must be res:// or user:// (got '%s')" % file_path
	if file_path.get_extension().to_lower() != "fbs":
		return "ERROR: Expected .fbs: " + file_path
	if not FileAccess.file_exists( file_path ):
		return "ERROR: Schema not found: " + file_path

	var dock:FileSystemDock = EditorInterface.get_file_system_dock()
	if not is_instance_valid( dock ):
		return "ERROR: FileSystem dock is not available"
	dock.navigate_to_path( file_path )

	if not _activate_path( dock, file_path ):
		return "ERROR: FileSystem dock has no row for " + file_path

	EditorInterface.set_main_screen_editor( "Script" )
	return _confirm_open( file_path )


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


func _confirm_open( file_path:String ) -> String:
	var script_editor:ScriptEditor = EditorInterface.get_script_editor()
	if not is_instance_valid( script_editor ):
		return "ERROR: Script editor is not available"
	var current:ScriptEditorBase = script_editor.get_current_editor()
	if not is_instance_valid( current ):
		return "ERROR: Script editor did not open a tab for " + file_path
	var base:Control = current.get_base_editor()
	if not base is TextEdit:
		return "ERROR: Opened tab is not a text editor for " + file_path

	var shown:String = (base as TextEdit).get_text().replace( "\r\n", "\n" ).strip_edges()
	var disk:String = FileAccess.get_file_as_string( file_path ).replace( "\r\n", "\n" ).strip_edges()
	if shown != disk:
		return "ERROR: Opened tab does not match " + file_path
	return "OK: FBS_DIAGNOSE opened " + file_path


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
