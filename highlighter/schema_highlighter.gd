@tool
extends EditorSyntaxHighlighter

##                                                 [br]
## │ ___ _      _   ___       __  __               [br]
## │| __| |__ _| |_| _ )_  _ / _|/ _|___ _ _ ___   [br]
## │| _|| / _` |  _| _ \ || |  _|  _/ -_) '_(_-<   [br]
## │|_| |_\__,_|\__|___/\_,_|_| |_| \___|_| /__/   [br]
## │ _  _ _      _    _ _      _   _               [br]
## │| || (_)__ _| |_ | (_)__ _| |_| |_ ___ _ _     [br]
## │| __ | / _` | ' \| | / _` | ' \  _/ -_) '_|    [br]
## │|_||_|_\__, |_||_|_|_\__, |_||_\__\___|_|      [br]
## ╰───────|___/─────────|___/──────────────────── [br]
## FlatBuffers Highlighter By-Line
##
## FlatBuffers Highlighter Description[br]
## [br]
## [color=goldenrod]TODO[/color]:
## Debounce highlight actions, though its not expensive, i havent really run
## into trouble with it yet.

const Log = preload("uid://biv0hwe68jj3s")

# Supporting Scripts
const Token = preload('uid://cvcd6kyaa4f1a')
const Tips = preload('uid://d03rmh07bwicj')
const StackFrame = preload('uid://c0ub8clj4bhhv')
const FrameStack = preload('uid://d3cyn1bbenwmo')
const Parser = preload("uid://dsj2eh2lfm2sg")


static var _opts:FlatBuffersOpts:
	get():
		if FlatBuffersPlugin._prime:
			_opts = FlatBuffersPlugin._prime.opts
		return _opts
	set(v):_opts = v


# ██████  ██████   ██████  ██████  ███████ ██████  ████████ ██ ███████ ███████ #
# ██   ██ ██   ██ ██    ██ ██   ██ ██      ██   ██    ██    ██ ██      ██      #
# ██████  ██████  ██    ██ ██████  █████   ██████     ██    ██ █████   ███████ #
# ██      ██   ██ ██    ██ ██      ██      ██   ██    ██    ██ ██           ██ #
# ██      ██   ██  ██████  ██      ███████ ██   ██    ██    ██ ███████ ███████ #
func                        ________PROPERTIES_______              ()->void:pass

var plugin:FlatBuffersPlugin
var parser:Parser

# ██   ██ ██  ██████  ██   ██ ██      ██  ██████  ██   ██ ████████ ███████ ██████
# ██   ██ ██ ██       ██   ██ ██      ██ ██       ██   ██    ██    ██      ██   ██
# ███████ ██ ██   ███ ███████ ██      ██ ██   ███ ███████    ██    █████   ██████
# ██   ██ ██ ██    ██ ██   ██ ██      ██ ██    ██ ██   ██    ██    ██      ██   ██
# ██   ██ ██  ██████  ██   ██ ███████ ██  ██████  ██   ██    ██    ███████ ██   ██

## The current resource file
## FIXME There is no way to retrieve the current source file_name from a TextEdit.
## https://github.com/godotengine/godot/pull/96058
## RESOLVED for 4.7 in https://github.com/godotengine/godot/pull/115814
#var resource:Resource

## The location of the current file
## FIXME There is no way to retrieve the current source file_name from a TextEdit.
## https://github.com/godotengine/godot/pull/96058
## RESOLVED for 4.7 in https://github.com/godotengine/godot/pull/115814
#var file_location:String

# FIXME, we're maintain our own cache here, but this might not be necessary
# we may be able to use the builtin cache and avoid having to manipulate the
# cache when the data changes.
## per line colour information, key is line number, value is a dictionary
var dict:Dictionary[int, Dictionary]

## current line dictionary, key is column number
var line_dict:Dictionary[int,Dictionary]


#      ██████  ██    ██ ███████ ██████  ██████  ██ ██████  ███████ ███████     #
#     ██    ██ ██    ██ ██      ██   ██ ██   ██ ██ ██   ██ ██      ██          #
#     ██    ██ ██    ██ █████   ██████  ██████  ██ ██   ██ █████   ███████     #
#     ██    ██  ██  ██  ██      ██   ██ ██   ██ ██ ██   ██ ██           ██     #
#      ██████    ████   ███████ ██   ██ ██   ██ ██ ██████  ███████ ███████     #
func                        ________OVERRIDES________              ()->void:pass

func _init( plugin_ref:FlatBuffersPlugin ) -> void:
	if plugin_ref:
		plugin = plugin_ref
	parser = Parser.new(plugin)
	parser._sync_constants_from_plugin()

	Log.lvl( Log.Level.TRACE, "[b]FlatBuffersHighlighter._init() - Completed[/b]" )


func _create() -> EditorSyntaxHighlighter:
	var self_script:GDScript = get_script()
	return self_script.new(plugin)


func _get_name() -> String:
	return "FlatBuffersSchema"


func _get_supported_languages() -> PackedStringArray:
	return ["FlatBuffersSchema", "fbs"]


func _clear_highlighting_cache() -> void:
	Log.trace()
	#resource = get_edited_resource()
	# file_location = resource.resource_path.get_base_dir() + "/"
	# FIXME: This ^^ relies on a patch https://github.com/godotengine/godot/pull/96058
	# RESOLVED for 4.7 in https://github.com/godotengine/godot/pull/115814

	var text_edit:TextEdit = get_text_edit()

	dict.clear()

	# clear types
	parser.clear_cache()

	# resize the stack index to be the document size.
	parser.resize_stack_index(text_edit.text.length() + 10)


func _get_line_syntax_highlighting(line_num: int) -> Dictionary:
	Log.trace({&'line_num': line_num+1}, self)

	var text_edit:TextEdit = get_text_edit()

	# Reset line highlighting for this line
	text_edit.set_line_background_color(line_num, Color(0,0,0,0))

	# Quick scan once
	if not parser.has_performed_quick_scan:
		parser.quick_scan_text(text_edit.text)

	var line:String = text_edit.get_line(line_num)
	if line.is_empty():
		parser.drop_line_issues( line_num )
		return {}

	line_dict = {}
	dict[line_num] = line_dict

	# ── Let parser do all the work ──────────────────────────────────────────
	parser.active_highlighter = self
	var result: Dictionary = parser.parse_line(line_num, line)
	parser.active_highlighter = null

	Log.lvl( Log.Level.DEBUG, "%s %s" % [line_num + 1, result.keys().map( str )] )
	return result


func _update_cache() -> void:
	Log.trace({}, self)
	# Get settings
	var text_edit:TextEdit = get_text_edit()

	if not text_edit.lines_edited_from.is_connected( _on_lines_edited_from ):
		var err:int = text_edit.lines_edited_from.connect( _on_lines_edited_from )
		if err != OK:
			Log.lvl( Log.Level.ERROR, error_string( err ) )

	parser.quick_scan( text_edit.text )

	text_edit.set_tooltip_request_func( func( word:String ) -> String:
		var tooltip:Variant = Tips.keywords.get(word)
		if not tooltip: return ""
		return  tooltip)


#         ███    ███ ███████ ████████ ██   ██  ██████  ██████  ███████         #
#         ████  ████ ██         ██    ██   ██ ██    ██ ██   ██ ██              #
#         ██ ████ ██ █████      ██    ███████ ██    ██ ██   ██ ███████         #
#         ██  ██  ██ ██         ██    ██   ██ ██    ██ ██   ██      ██         #
#         ██      ██ ███████    ██    ██   ██  ██████  ██████  ███████         #
func                        _________METHODS_________              ()->void:pass


# TODO, this function is a little messy and needs a good audit.
# Still doesnt solve the problem it needs to solve.
## Account for added and removed lines
func _on_lines_edited_from(from_line: int, to_line: int) -> void:
	Log.trace({&'from_line': from_line, &'to_line': to_line}, self)
	if from_line == to_line: return

	#var text_edit:TextEdit = get_text_edit()
	# How do I go about shifting all the indexes over, do I just increment?
	# build a new dictionary from the old?
	# I'm not really sure what the most efficient route here is for this.
	# perhaps my initial choice of containers is wrong.

	# I think the builtin dictionaries are automatically updated.

	# TODO dont forget to move the background colors.
	#text_edit.set_line_background_color(line_num, Color(0,0,0,0))
	#var bg_color:Color = text_edit.get_line_background_color(line_num)

	# If there was a cache entry where the start line was, it should be
	# copied to the new start position

	var from_dict:Dictionary = dict.get(from_line, {})

	# how many lines were added/removed
	var shift:int = from_line - to_line

	var shifted_dict:Dictionary[int, Dictionary] = {}

	# Ensure we start with the unchanged lines first
	var line_idxs:Array = dict.keys()
	line_idxs.sort()

	for line:int in line_idxs:
		# Unchanged Lines
		if line < from_line:
			shifted_dict[line] = dict[line]

		# displaced lines
		# dont overwrite unchanged lines
		if shifted_dict.has(line + shift): continue
		# Update position
		shifted_dict[line + shift] = dict[line]

	# Put back the starting position
	if not from_dict.is_empty():
		shifted_dict[from_line] = from_dict

	# replace highlighting cache.
	dict = shifted_dict


## returns [code]true[/code] if the [param token] on the line that is currently being edited.
func is_token_in_edited_line( token:Token ) -> bool:
	var te := get_text_edit()
	var carets:Array = te.get_sorted_carets()
	return token.line in carets.map(te.get_caret_line)


func is_cursor_in_token( token:Token ) -> bool:
	var te := get_text_edit()
	var carets:Array = te.get_sorted_carets()
	for caret:int in carets:
		if token.line != te.get_caret_line(caret): continue
		var cc:int = te.get_caret_column(caret)
		if cc < token.col: continue
		if cc <= (token.col + token.t.length()):return true
	return false


## Change the colour of the text defined by the [param token].
func highlight( token:Token ) -> void:
	line_dict[token.col] = { 'color':_opts.get_colour( token.type ) }
	line_dict[token.col + token.t.length()] = {}
	if not (parser.error_flag or parser.warning_flag):
		get_text_edit().set_line_background_color(token.line, Color(0,0,0,0) )


## Change the colour of the text defined by the [param token] to [param color].
func highlight_colour( token:Token, colour:Color ) -> void:
	line_dict[token.col] = { 'color':colour }
	if not (parser.error_flag or parser.warning_flag):
		get_text_edit().set_line_background_color(token.line, Color(0,0,0,0) )


## Highlight the line [param token] is on with the warning colour, and print to console.
func syntax_warning( token:Token, reason:String = "" ) -> void:
	parser.warning_flag = true
	parser.add_issue( &"warning", token, reason )
	if is_cursor_in_token(token):
		return
	var colour:Color = _opts.color_notice_warning
	if _opts.highlight_warning:
		get_text_edit().set_line_background_color(token.line, colour.blend(Color(0,0,0,.5)) )
	else: line_dict[token.col] = { 'color':colour }
	# TODO, if the token being warned about is on the line we are editing perhaps
	# we should not print any warnings at all, or change the loglevel
	var frame_type:String = '#' if parser.stack.is_empty() else StackFrame.Type.find_key(parser.stack.top().type)
	Log.wrn( "%s:Warning in: %s - %s" % [frame_type, token, reason] )
	Log.lvl( Log.Level.DEBUG, str( parser.stack ) )


## Highlight the line [param token] is on with the error colour, and print to console.
func syntax_error( token:Token, reason:String = "" ) -> void:
	parser.error_flag = true
	parser.add_issue( &"error", token, reason )
	if is_cursor_in_token(token):
		return
	var colour:Color = _opts.color_notice_error
	if _opts.highlight_error:
		get_text_edit().set_line_background_color(token.line, colour.blend(Color(0,0,0,.5)) )
	else: line_dict[token.col] = { 'color':colour }
	# TODO, if the token being warned about is on the line we are editing perhaps
	# we should not print any warnings at all, or change the loglevel
	var frame_type:String = '#' if parser.stack.is_empty() else StackFrame.Type.find_key(parser.stack.top().type)
	Log.err( "%s:Error in: %s - %s" % [frame_type, token, reason] )
	Log.lvl( Log.Level.DEBUG, str( parser.stack ) )


## Print to the output console padding + [param message], where padding is set by
## the size of the GDScript stack.
static func hlog( lvl:int, ...message:Array ) -> void:
	var colour:String = _opts.get_colour(lvl).to_html()
	var padding:String = "".lpad(get_stack().size()-1, '\t') if lvl == Log.Level.TRACE else ""
	var msg:String = "".join([padding, "[color=%s]" % colour] + message + ["[/color]"])
	Log.rich( lvl, msg )
