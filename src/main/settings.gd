extends Node

var SettingData:Dictionary = {}

func save_settings() -> void:
	var file:FileAccess = FileAccess.open("res://config.json",FileAccess.WRITE)
	if FileAccess.get_open_error():
		Utils.log.error(error_string(FileAccess.get_open_error()))
		return
	file.store_string(JSON.stringify(SettingData,"\t"))
	file.close()
	Utils.log.info("Saved Settings.")

func load_settings() -> void:
	var file:FileAccess = FileAccess.open("res://config.json",FileAccess.READ)
	if FileAccess.get_open_error() != OK:
		Utils.log.error(error_string(FileAccess.get_open_error()))
		return
	var json:Variant = JSON.parse_string(file.get_as_text())
	if json != null:
		SettingData.merge(json, true)
	file.close()
	Utils.log.info("Loaded Settings.")

func load_defaults() -> void:
	SettingData["discord/enabled"] = true
	SettingData["osc/port"] = 9001
	SettingData["osc/router/enabled"] = false
	SettingData["osc/router/port"] = 9002
	SettingData["osc/router/address"] = "127.0.0.1"
	SettingData["slimevr/port"] = 6969
	SettingData["slimevr/address"] = "127.0.0.1"
	SettingData["slimevr/saved_trackers"] = []
	SettingData["slimevr/webserver/port"] = 21110
	SettingData["slimevr/webserver/address"] = "127.0.0.1"
	SettingData["haptic/enabled"] = true
	SettingData["haptic/port"] = 6767
	SettingData["haptic/address"] = "127.0.0.1"
	SettingData["controller/identitys"] = []

func _enter_tree() -> void:
	load_defaults()
	load_settings()

func _notification(notify: int) -> void:
	if notify == NOTIFICATION_WM_CLOSE_REQUEST:
		SlimeVRServer.save_tracker()
		ControllerHandler.save_controller()
		save_settings()
		get_tree().quit()

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
