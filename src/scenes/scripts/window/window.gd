extends Control

@export var WindowTitle:String = "SlimeVR Toolbox"
@export var WindowIcon:Texture2D = preload("res://assets/vectors/icon/icon_no_background.svg")

@export var MinWindowSize:Vector2 = Vector2(640,360)

const MIN_ICON:Texture2D = preload("res://assets/vectors/ui/buttons/window.svg")
const MAX_ICON:Texture2D = preload("res://assets/vectors/ui/buttons/maximize.svg")

const PIN_OFF:Texture2D = preload("res://assets/vectors/ui/buttons/pin_empty.svg")
const PIN_ON:Texture2D = preload("res://assets/vectors/ui/buttons/pin_full.svg")

var isMaximized:bool = false
var isDragging:bool = false

var DragStartPos:Vector2i = Vector2i.ZERO
var OrigineWindowPos:Vector2i = Vector2i.ZERO

var beforeSize:Vector2i = Vector2i.ZERO
var beforePos:Vector2i = Vector2i.ZERO

func _ready() -> void:
	RenderingServer.set_default_clear_color(Color(0.1,0.1,0.1))
	await RenderingServer.frame_post_draw
	DisplayServer.window_set_title(WindowTitle)
	get_node("TopBar/Title/Text").set_text(" "+WindowTitle)

func _draw() -> void:
	if WindowIcon: draw_texture_rect_region(WindowIcon,
		Rect2(Vector2.ZERO, Vector2(30,30)),
		Rect2(Vector2.ZERO, WindowIcon.get_size())
	)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if (event as InputEventMouseButton).is_pressed():
			var rect:Rect2 = Rect2(DisplayServer.window_get_position()+Vector2i($DragZones/Main.position), $DragZones/Main.size)
			var pos:Vector2i = DisplayServer.mouse_get_position()
			if rect.has_point(pos):
				isDragging = true
				DragStartPos = pos
				OrigineWindowPos = DisplayServer.window_get_position()
		if(event as InputEventMouseButton).is_released():
			isDragging = false
	if event is InputEventMouseMotion:
		if isDragging:
			var pos:Vector2i = DisplayServer.mouse_get_position()
			if isMaximized:
				OrigineWindowPos = pos
				_on_maxmize_pressed()
			DisplayServer.window_set_position(OrigineWindowPos + (pos - DragStartPos))

func _process(_delta: float) -> void:
	if isMaximized: get_node("TopBar/Buttons/Maxmize").icon = MIN_ICON
	else: get_node("TopBar/Buttons/Maxmize").icon = MAX_ICON


func _on_minmize_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MINIMIZED)

func _on_maxmize_pressed() -> void:
	if isMaximized:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		DisplayServer.window_set_size(beforeSize)
		if !isDragging: DisplayServer.window_set_position(beforePos)
		isMaximized = false
	else:
		beforeSize = DisplayServer.window_get_size()
		beforePos = DisplayServer.window_get_position()
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
		isMaximized = true

func _on_close_pressed() -> void:
	get_tree().quit()

func _on_pin_toggled(value: bool) -> void:
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP, value)
	if value: get_node("TopBar/Buttons/Pin").icon = PIN_ON
	else: get_node("TopBar/Buttons/Pin").icon = PIN_OFF
