extends Object
class_name Pair

var first:Variant
var secound:Variant

@warning_ignore("shadowed_variable")
static func of(first:Variant, secound:Variant) -> Pair:
	var pair = Pair.new()
	pair.first = first
	pair.secound = secound
	return pair

func _to_string() -> String:
	return "( " + str(first) + " , " + str(secound) + " )" 
