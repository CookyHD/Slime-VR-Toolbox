extends Node

func millis() -> int:
	return Time.get_ticks_msec()

func error(...args) -> void:
	var string:String = "[color=red][ERROR ] "
	for arg:Variant in args:
		if typeof(arg) != TYPE_STRING: string += str(arg)
		else: string += arg
	print_rich(string)

func error_popup(..._args) -> void:
	pass

func warn(...args) -> void:
	var string:String = "[color=yellow][WARN  ] "
	for arg:Variant in args:
		if typeof(arg) != TYPE_STRING: string += str(arg)
		else: string += arg
	print_rich(string)
	
func debug(...args) -> void:
	var string:String = "[color=white][DEBUG] "
	for arg:Variant in args:
		if typeof(arg) != TYPE_STRING: string += str(arg)
		else: string += arg
	print_rich(string)

func is_null(value:Variant) -> bool:
	if value == null: return true
	return false

func timer(time:float) -> Signal:
	return get_tree().create_timer(time).timeout
