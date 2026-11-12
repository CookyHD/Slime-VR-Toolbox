extends Node

func millis() -> int:
	return Time.get_ticks_msec()

func timer(time:float) -> Variant:
	if time <= 0: return
	return get_tree().create_timer(time).timeout

func hex_color(color:Color) -> String:
	return color.to_html(false)

func array_to_string(array:Array[Variant]) -> String:
	var packed_string:PackedStringArray = PackedStringArray()
	for value:Variant in array:
		if typeof(value) != TYPE_STRING: packed_string.append(str(value))
		else: packed_string.append(value)
	return String().join(packed_string)

func err_warp(err:Error, ref:Error = OK) -> bool:
	if err != OK:
		log.error(error_string(err))
		ref = err
		return true
	return false

func if_else(flag:bool,t_value:Variant,f_value:Variant) -> Variant:
	if flag: return t_value
	else: return f_value

class log:
	extends Object
	
	static func info(...args) -> void:
		print_rich("[color=", Utils.hex_color(Color.LIGHT_BLUE), "][INFO ] ", Utils.array_to_string(args))
	
	static func error(...args) -> void:
		print_rich("[color=", Utils.hex_color(Color.RED), "][ERROR] ", Utils.array_to_string(args))
	
	static func warn(...args) -> void:
		print_rich("[color=", Utils.hex_color(Color.YELLOW), "][WARN ] ", Utils.array_to_string(args))
	
	static func debug(...args) -> void:
		print_rich("[color=", Utils.hex_color(Color.LIGHT_YELLOW), "][DEBUG] ", Utils.array_to_string(args))
