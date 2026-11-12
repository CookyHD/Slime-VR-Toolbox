extends Object
class_name Controller

var rotation:Quaternion = Quaternion.IDENTITY
var acceleration:Vector3 = Vector3.ZERO

var identity:String = "0000:0000-00:00:00:00:00:00"

var Connected:bool = false

var id:int = 0

@warning_ignore("shadowed_variable")
func _init(identity:String, id:int = -1, connected:bool = false) -> void:
	self.identity = identity
	self.id = id
	self.Connected = connected

func vibrate(intensity:float, duration:int) -> void:
	if intensity == 0.0:
		Input.stop_joy_vibration(id)
	Input.start_joy_vibration(id, intensity, intensity, float(duration))

func update(delta:float) -> void:
	if id == -1: return
	if !Input.is_joy_motion_sensors_enabled(id):
		Input.set_joy_motion_sensors_enabled(id, true)
		Utils.log.debug("Starting Joy Calibration.")
		Input.start_joy_motion_sensors_calibration(id)
		await Utils.timer(5)
		Utils.log.debug("Done Joy Calibration.")
		Input.stop_joy_motion_sensors_calibration(id)
	
	acceleration = (Input.get_joy_accelerometer(id) - Input.get_joy_gravity(id))
	
	var gyro:Vector3 = Input.get_joy_gyroscope(id)
	if gyro != Vector3.ZERO:
		var delta_rotation:Quaternion = Quaternion(gyro.normalized(), gyro.length() * delta)
		rotation = (rotation * delta_rotation).normalized()

func get_quat() -> Quaternion:
	return rotation * Quaternion(Vector3.LEFT, -90)

func _to_string() -> String:
	var string:String = ""
	
	string += "\nController:\n"
	string += "\tIdentity: "+identity+"\n"
	string += "\tID: "+str(id)+"\n"
	string += "\tConnected: "+str(Connected)+"\n"
	
	return string
