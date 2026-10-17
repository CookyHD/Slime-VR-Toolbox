extends Control

@onready var roatation:Node3D = $ViewportContainer/Viewport/Rotation
@onready var acceleration:Node3D = $ViewportContainer/Viewport/Acceleration

func update(quat:Quaternion, accel:Vector3) -> void:
	var transform:Transform3D = Transform3D.IDENTITY
	roatation.transform = transform.rotated(quat.get_axis().normalized(), quat.get_angle())
	if accel.distance_to(Vector3.ZERO) > 0.5:
		if !acceleration.visible: acceleration.show()
		acceleration.look_at(accel, Vector3(0,0,-1))
		acceleration.scale.y = clamp (accel.distance_to(Vector3.ZERO) / 3.0, 0.0, 3.0)
	else:
		if acceleration.visible:acceleration.hide()
