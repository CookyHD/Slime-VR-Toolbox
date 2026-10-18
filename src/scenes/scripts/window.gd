@tool
extends Control

@export var WindowTitle:String = ""
@export var WindowIcon:Texture2D = null

@export var MinimumWindowSize:Vector2i = Vector2i.ZERO

@onready var MainWindow:Window = get_window()

const BarColor:Color = Color(0.4, 0.204, 0.6, 1.0)
const BarButtonColor:Color = Color(0.2, 0.102, 0.302, 1.0)

var Status:String = ""

var isMaximized:bool = false
var isDraging:bool = false
var isResizeing:bool = false

var ResizeMode:StringName = &""

var WindowOffset:Vector2i = Vector2i.ZERO
var MouseOffset:Vector2i = Vector2i.ZERO

var WindowPastSize:Vector2i = Vector2i.ZERO

func _ready() -> void:
	if Engine.is_editor_hint(): return
	
	#Drag Zones
	$DragZone.gui_input.connect(on_drag)
	for node:Control in $ResizeZones.get_children():
		node.gui_input.connect(on_resize.bind(node))
	
	#Buttons
	$Close.pressed.connect(on_button.bind($Close))
	$Maxmize.pressed.connect(on_button.bind($Maxmize))
	$Minmize.pressed.connect(on_button.bind($Minmize))
	$Pin.pressed.connect(on_button.bind($Pin))
	
	#Title
	$Title.set_text(" "+WindowTitle)
	await RenderingServer.frame_post_draw
	DisplayServer.window_set_title(WindowTitle)

func _process(_delta: float) -> void:
	if Engine.is_editor_hint():
		$Title.set_text(" "+WindowTitle)
		queue_redraw()
		return
	if isResizeing:
		queue_redraw()
		if ResizeMode in [&"Top", &"Top-Left", &"Top-Right"]:
			MainWindow.size.y = clampi(WindowPastSize.y - (get_mouse_pos().y - MouseOffset.y),MinimumWindowSize.y+30, INT64_MAX)
			MainWindow.position.y = WindowOffset.y - (MainWindow.size.y - WindowPastSize.y)
		if ResizeMode in [&"Right", &"Top-Right", &"Bottom-Right"]:
			MainWindow.size.x = clampi(WindowPastSize.x + (get_mouse_pos().x - MouseOffset.x),MinimumWindowSize.x, INT64_MAX)
		if ResizeMode in [&"Left", &"Top-Left", &"Bottom-Left"]:
			MainWindow.size.x = clampi(WindowPastSize.x - (get_mouse_pos().x - MouseOffset.x),MinimumWindowSize.x, INT64_MAX)
			MainWindow.position.x = WindowOffset.x - (MainWindow.size.x - WindowPastSize.x)
		if ResizeMode in [&"Bottom", &"Bottom-Left", &"Bottom-Right"]:
			MainWindow.size.y = clampi(WindowPastSize.y + (get_mouse_pos().y - MouseOffset.y),MinimumWindowSize.y+30, INT64_MAX)
	if isDraging:
		MainWindow.position = WindowOffset + (get_mouse_pos() - MouseOffset)

func on_button(button:Button) -> void:
	if button == $Close:
		get_tree().quit()
	if button == $Maxmize:
		if isMaximized:
			MainWindow.position = WindowOffset
			MainWindow.size = WindowPastSize
			MainWindow.mode = Window.MODE_WINDOWED
			$ResizeZones.show()
			button.icon = preload("res://assets/vectors/ui/buttons/maximize.svg")
			isMaximized = false
		else:
			WindowOffset = MainWindow.position
			WindowPastSize = MainWindow.size
			MainWindow.mode = Window.MODE_MAXIMIZED
			$ResizeZones.hide()
			button.icon = preload("res://assets/vectors/ui/buttons/window.svg")
			isMaximized = true
	if button == $Minmize:
		MainWindow.mode = Window.MODE_MINIMIZED
	if button == $Pin:
		if button.button_pressed:
			MainWindow.set_flag(Window.FLAG_ALWAYS_ON_TOP, true)
			button.icon = preload("res://assets/vectors/ui/buttons/pin_full.svg")
		else:
			MainWindow.set_flag(Window.FLAG_ALWAYS_ON_TOP, false)
			button.icon = preload("res://assets/vectors/ui/buttons/pin_empty.svg")

func on_drag(event:InputEvent) -> void:
	if not event is InputEventMouseButton: return
	event = event as InputEventMouseButton
	if not event.button_index == MouseButton.MOUSE_BUTTON_LEFT: return
	if event.pressed:
		if isMaximized:
			on_button($Maxmize)
			MainWindow.position = get_mouse_pos() - Vector2i(roundi(float(MainWindow.size.x) / 2), 15)
		isDraging = true
		MouseOffset = get_mouse_pos()
		WindowOffset = MainWindow.position
	else:
		isDraging = false
		if Math.in_range(get_mouse_pos().y,get_screen_top()-5,get_screen_top()+5):
			on_button($Maxmize)

func on_resize(event:InputEvent, zone:Control) -> void:
	if not event is InputEventMouseButton: return
	event = event as InputEventMouseButton
	if not event.button_index == MouseButton.MOUSE_BUTTON_LEFT: return
	if event.pressed:
		isResizeing = true
		ResizeMode = zone.name
		MouseOffset = get_mouse_pos()
		WindowOffset = MainWindow.position
		WindowPastSize = MainWindow.size
	else:
		isResizeing = false

func get_mouse_pos() -> Vector2i:
	return DisplayServer.mouse_get_position()

func get_screen_top() -> int:
	return DisplayServer.screen_get_position(MainWindow.current_screen).y

func _draw() -> void:
	draw_rect(
		Rect2(
			Vector2.ZERO,
			Vector2(size.x,30)
		),
		BarColor
	)
	draw_rect(
		Rect2(
			Vector2(size.x - 120,0),
			Vector2(120,30)
		),
		BarButtonColor
	)
	if WindowIcon:
		draw_texture_rect_region(
			WindowIcon,
			Rect2(Vector2.ZERO,Vector2(30,30)),
			Rect2(Vector2.ZERO,WindowIcon.get_size())
		)
	end
