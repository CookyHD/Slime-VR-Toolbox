extends Node

var WINDOW := preload("res://src/scenes/window.tscn").instantiate()
var DISCORD:DiscordRichPresence = DiscordRichPresence.new()

var TIMESTEMP:int = int(Time.get_unix_time_from_system())

var DISCORD_APP_ID:String = "1560109841832349716"

func _ready() -> void:
	DISCORD.name = "DiscordRichPresence"
	DISCORD.presence_disconnected.connect(on_discord_disconnect)
	DISCORD.presence_connected.connect(on_discord_connect)
	DISCORD.app_id = DISCORD_APP_ID
	DISCORD.set_activity({
		"timestamps": {"start": TIMESTEMP},
		"assets": {"large_image": "app_icon"}
	})
	await get_tree().root.ready
	get_tree().root.add_child(WINDOW,true)
	get_tree().root.add_child(DISCORD,true)

func set_discord_status(status:String) -> void:
	DISCORD.set_activity({
		"details": status,
		"timestamps": {"start": TIMESTEMP},
		"assets": {"large_image": "app_icon"}
	})
 
func on_discord_disconnect() -> void:
	Utils.log.warn("Discord Disconnected...")

func on_discord_connect(_user:Dictionary) -> void:
	Utils.log.debug("Discord Connected!")
