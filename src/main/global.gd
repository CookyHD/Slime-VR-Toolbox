extends Node

var AppWindow := preload("res://src/scenes/window.tscn").instantiate()
var Discord:DiscordRichPresence = DiscordRichPresence.new()

const localIP:String = "127.0.0.1"

const TRACKER_VERSION:String = "1.0"

var VirtualConnectionCount:int = 0

func newVirutalAddress() -> String:
	VirtualConnectionCount += 1
	return "127.67.67." + str(VirtualConnectionCount)

func _ready() -> void:
	setup_discord()
	await get_tree().root.ready
	get_tree().root.add_child(AppWindow,true)
	if Settings.get_setting("discord/enabled"):
		start_discord()
 
#INFO: Stay's Constant For Now.
func setup_discord() -> void:
	Discord.name = "DiscordRichPresence"
	Discord.presence_disconnected.connect(on_discord_disconnect)
	Discord.presence_connected.connect(on_discord_connect)
	Discord.app_id = "1560109841832349716"
	Discord.set_activity({
		"timestamps": {"start": int(Time.get_unix_time_from_system())},
		"assets": {"large_image": "app_icon"},
		"status": "Configuring SlimeVR."
	})

func start_discord() -> void:
	get_tree().root.add_child(Discord)

func stop_discord() -> void:
	get_tree().root.remove_child(Discord)

func on_discord_disconnect() -> void:
	Utils.log.warn("Discord Disconnected.")

func on_discord_connect(_user:Dictionary) -> void:
	Utils.log.info("Discord Connected.")
