extends Object
class_name Haptic

var mac:String = "00:00:00:00:00:00"
var address:String = "0.0.0.0"
var device_id:int = 0

var is_controller:bool = false

@warning_ignore("shadowed_variable")
static func new_tracker(address:String, mac:String) -> Haptic:
	var haptic:Haptic = Haptic.new()
	haptic.address = address
	haptic.mac = mac
	return haptic

static func mew_controller(id:int) -> Haptic:
	var haptic:Haptic = Haptic.new()
	haptic.is_controller = true
	haptic.device_id = id
	haptic.mac = Input.get_joy_info(id)["serial_number"].replace("-",":")
	return haptic
