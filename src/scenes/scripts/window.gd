@tool
extends Control

@export var WindowTitle:String = "SlimeVR Toolbox"
@export var WindowIcon:Texture2D = preload("res://assets/vectors/icon/icon_no_bg.svg")

@export var MinimumWindowSize:Vector2i = Vector2i(1280, 720)

@export var TopBarColor:Color = Color(0.3,0.3,0.3)
@export var TopBarButtonColor:Color = Color(0.2,0.2,0.2)
@export var BackgroundColor:Color = Color(0.1,0.1,0.1)

@export var PinButtonIconColor:Color = Color(0.5,0.5,1.0)

@export var CloseButtonHoverColor:Color = Color8(255,0,0,255)
@export var CloseButtonPressedColor:Color = Color8(255,127,127,255)

@onready var MainWindow:Window = get_window()

var Status:String = ""

var isPinned:bool = false
var isMaximized:bool = false
var isDraging:bool = false
var isResizeing:bool = false

var ResizeMode:StringName = &""

var WindowOffset:Vector2i = Vector2i.ZERO
var MouseOffset:Vector2i = Vector2i.ZERO

var WindowPastSize:Vector2i = Vector2i.ZERO

func _ready() -> void:
	if Engine.is_editor_hint(): return
	
	#Colors
	RenderingServer.set_default_clear_color(BackgroundColor)
	set_pin_button_color(Color.WHITE)
	set_close_button_colors(CloseButtonPressedColor, CloseButtonHoverColor)
	
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
		if ProjectSettings.get_setting("application/boot_splash/bg_color") != BackgroundColor:
			ProjectSettings.set_setting("application/boot_splash/bg_color", BackgroundColor)
			ProjectSettings.save()
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
		get_tree().root.propagate_notification(NOTIFICATION_WM_CLOSE_REQUEST)
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
		if isPinned:
			MainWindow.set_flag(Window.FLAG_ALWAYS_ON_TOP, false)
			button.icon = preload("res://assets/vectors/ui/buttons/pin_empty.svg")
			set_pin_button_color(Color.WHITE)
			isPinned = false
		else:
			MainWindow.set_flag(Window.FLAG_ALWAYS_ON_TOP, true)
			button.icon = preload("res://assets/vectors/ui/buttons/pin_full.svg")
			set_pin_button_color(PinButtonIconColor)
			isPinned = true

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
	if Engine.is_editor_hint():
		draw_rect(
			Rect2(
				position,
				size
			),
			BackgroundColor
		)
	draw_rect(
		Rect2(
			Vector2.ZERO,
			Vector2(size.x,30)
		),
		TopBarColor
	)
	draw_rect(
		Rect2(
			Vector2(size.x - 120,0),
			Vector2(120,30)
		),
		TopBarButtonColor
	)
	if WindowIcon:
		draw_texture_rect_region(
			WindowIcon,
			Rect2(Vector2.ZERO,Vector2(30,30)),
			Rect2(Vector2.ZERO,WindowIcon.get_size())
		)
	end

func set_pin_button_color(color:Color) -> void:
	$Pin.add_theme_color_override("icon_normal_color", color)
	$Pin.add_theme_color_override("icon_hover_color", color)
	$Pin.add_theme_color_override("icon_pressed_color", color)

func set_close_button_colors(color_pressed:Color, color_hover:Color) -> void:
	
	var pressed_style_box:StyleBoxFlat = StyleBoxFlat.new()
	pressed_style_box.bg_color = color_pressed
	$Close.add_theme_stylebox_override("pressed", pressed_style_box)
	
	var hover_style_box:StyleBoxFlat = StyleBoxFlat.new()
	hover_style_box.bg_color = color_hover
	$Close.add_theme_stylebox_override("hover", hover_style_box)
