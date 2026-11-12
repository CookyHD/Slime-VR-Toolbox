extends Node

var Controllers:Array[Controller] = []

var isCalibrated:bool = false

func setup() -> void:
	load_controller()
	Input.joy_connection_changed.connect(joy_connection)
	for id:int in Input.get_connected_joypads():
		joy_connection(id, true)

func joy_connection(id:int, connected:bool) -> void:
	if connected:
		var identity:String = to_identity(id)
		if !has_controller(identity):
			Controllers.append(Controller.new(identity, id, true))
		else:
			get_controller_by_identity(identity).Connected = true
			get_controller_by_identity(identity).id = id
	else:
		get_controller_by_id(id).Connected = false
		get_controller_by_id(id).id = -1

func save_controller() -> void:
	var arr:Array = Settings.wrap_setting_array("controller/identitys")
	for controller:Controller in Controllers:
		var value:String = controller.identity
		if !arr.has(value):
			arr.append(value)

func load_controller() -> void:
	var arr:Array = Settings.wrap_setting_array("controller/identitys")
	for value:String in arr:
		Controllers.append(Controller.new(value))

func to_identity(id:int) -> String:
	var info:Dictionary = Input.get_joy_info(id)
	var vid:String = info["vendor_id"]
	var pid:String = info["product_id"]
	var sirial:String = info["serial_number"]
	return vid + ":" + pid + "-" + sirial.replace("-",":").to_upper()

func has_controller(identity:String) -> bool:
	for controller:Controller in Controllers:
		if controller.identity == identity:
			return true
	return false

func get_controller_by_identity(identity:String) -> Controller:
	for controller:Controller in Controllers:
		if controller.identity == identity:
			return controller
	return null

func get_controller_by_id(id:int) -> Controller:
	for controller:Controller in Controllers:
		if controller.id == id:
			return controller
	return null
