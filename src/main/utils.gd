extends Node

func millis() -> int:
	return Time.get_ticks_msec()

func timer(time:float) -> Variant:
	if time <= 0: return
	return get_tree().create_timer(time).timeout

class log:
	
	static func error(...args) -> void:
		var string:String = "[color=red][ERROR ] "
		for arg:Variant in args:
			if typeof(arg) != TYPE_STRING: string += str(arg)
			else: string += arg
			string += " "
		print_rich(string)

	static func warn(...args) -> void:
		var string:String = "[color=yellow][WARN  ] "
		for arg:Variant in args:
			if typeof(arg) != TYPE_STRING: string += str(arg)
			else: string += arg
			string += " "
		print_rich(string)
		
	static func debug(...args) -> void:
		var string:String = "[color=white][DEBUG] "
		for arg:Variant in args:
			if typeof(arg) != TYPE_STRING: string += str(arg)
			else: string += arg
			string += " "
		print_rich(string)
