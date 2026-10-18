extends Object
class_name SlimeVRTracker

var mac:String = "00:00:00:00:00:00"
var index:int = 0

var rotation:Quaternion
var acceleration:Vector3
var aligned_offset:float

var status:int

var old_rotation:Quaternion = Quaternion.IDENTITY

var is_somatic:bool = false

func _init(set_mac:String, set_index:int, info:Dictionary[String,Variant] = {}) -> void:
	mac = set_mac
	index = set_index
	set_info(info)

func set_info(info:Dictionary[String,Variant]) -> void:
	if info.has("rotation"):
		old_rotation = rotation
		rotation = info["rotation"]
	if info.has("acceleration"):
		acceleration = info["acceleration"]
	if info.has("aligned_offset"):
		aligned_offset = info["aligned_offset"]
	if info.has("status"):
		status = info["status"]

func get_moveing_strength() -> float:
	return old_rotation.angle_to(rotation)

func is_moveing() -> bool:
	if get_moveing_strength() > 0.01: return old_rotation != rotation
	return false

func get_raw_rotation() -> Quaternion:
	var yaw_rotation:Quaternion = Quaternion(Vector3.UP, aligned_offset)
	return rotation-yaw_rotation

func get_status() -> String:
	match status:
		2:
			return "CONNECTED"
		1:
			return "DISCONNECTED"
		_:
			return "UNKOWN"

func _to_string() -> String:
	var string:String = ""
	
	string += "\nTracker:\n"
	string += "\tMac: "+mac+"\n"
	string += "\tIndex: "+str(index)+"\n"
	string += "\tStatus: "+str(get_status())+"\n"
	string += "\tRotation: "+str(rotation)+"\n"
	string += "\tRaw Rotation: "+str(get_raw_rotation())+"\n"
	string += "\tAcceleration: "+str(acceleration)+"\n"
	string += "\tMoveing: "+str(is_moveing())+"\n"
	
	return string
