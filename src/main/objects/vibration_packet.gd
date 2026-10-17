extends Object
class_name VibrationPacket

var is_b_haptic:bool = false
var is_custom:bool = false

var duration:int = 0
var intensity:float = 0.0

@warning_ignore("shadowed_variable")
func _init(duration:int, intensity:float) -> void:
	self.duration = duration
	self.intensity = intensity
	

func _to_string() -> String:
	return "( Duration: "+str(duration)+" | Intensity: "+str(intensity)+" )"
