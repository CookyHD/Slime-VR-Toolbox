extends Node

func setup() -> void:
	var presence := DiscordRichPresence.new()
	presence.name = "DiscordRichPresence"
	presence.presence_disconnected.connect(on_disconnect)
	presence.presence_connected.connect(on_connect)
	get_tree().root.add_child.call_deferred(presence, true)
	presence.app_id = "1560109841832349716"
	presence.set_activity({
		"details": "Configuring SlimeVR!",
		"timestamps": {"start": int(Time.get_unix_time_from_system())},
		"assets": {"large_image": "app_icon"},
	})

func on_disconnect() -> void:
	Utils.log.warn("Discord Disconnected...")

func on_connect(_user:Dictionary) -> void:
	Utils.log.debug("Discord Connected!")
