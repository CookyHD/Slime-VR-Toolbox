extends Node

var SettingData:Dictionary = {}

func save_settings() -> void:
	var file:FileAccess = FileAccess.open("res://config.json",FileAccess.WRITE)
	if FileAccess.get_open_error():
		Utils.log.error(error_string(FileAccess.get_open_error()))
		return
	file.store_string(JSON.stringify(SettingData,"\t"))
	file.close()

func load_settings() -> void:
	var file:FileAccess = FileAccess.open("res://config.json",FileAccess.READ)
	if FileAccess.get_open_error() != OK:
		Utils.log.error(error_string(FileAccess.get_open_error()))
		return
	var json:Variant = JSON.parse_string(file.get_as_text())
	if json != null:
		SettingData = json
	file.close()

func get_setting(key:String) -> Variant:
	if key.contains(":"):
		var split:PackedStringArray = key.split(":")
		if SettingData.has(split[0]):
			if SettingData[split[0]].has(split[1]):
				return SettingData[split[0]][split[1]]
	else:
		if SettingData.has(key): return SettingData[key]
	return null

func set_setting(key:String, value:Variant) -> void:
	if key.contains(":"):
		var split:PackedStringArray = key.split(":")
		if !SettingData.has(split[0]):
			SettingData[split[0]] = {}
		SettingData[split[0]][split[1]] = value
	else:
		SettingData[key] = value

func has_setting(key:String) -> bool:
	if key.contains(":"):
		var split:PackedStringArray = key.split(":")
		if SettingData.has(split[0]):
			if SettingData[split[0]].has(split[1]):
				return true
	else:
		if SettingData.has(key): return true
	return false

func wrap_setting_array(key:String) -> Array[Variant]:
	if !SettingData.has(key):
		SettingData[key] = []
		return SettingData[key]
	elif typeof(SettingData[key]) == TYPE_ARRAY:
		return SettingData[key]
	else:
		Utils.log.error("No Array Found!")
		return []
