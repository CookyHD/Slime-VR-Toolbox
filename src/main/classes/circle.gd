@tool

extends Control
class_name Circle

@export_range(0.0,1.0) var radius:float = 0.8:
	set(value):
		radius = value
		queue_redraw()
@export var color:Color = Color.WHITE:
	set(value):
		color = value
		queue_redraw()
@export var filled:bool = true:
	set(value):
		filled = value
		queue_redraw()
@export var width:float = 1.0:
	set(value):
		width = value
		queue_redraw()

func _draw() -> void:
	var pos:Vector2 = size / 2
	var r:float = min(size.x, size.y)
	if filled:
		draw_circle(pos,((r/2) - (width/2)) * clampf(radius, 0.0, 1.0),color,true)
	else:
		draw_circle(pos,((r/2) - (width/2)) * clampf(radius, 0.0, 1.0),color,false,width)
