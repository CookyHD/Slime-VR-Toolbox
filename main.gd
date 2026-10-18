extends Node

func _ready() -> void:
	VRChatOSCServer.setup()
	SlimeVRServer.setup()

func _process(_delta: float) -> void:
	VRChatOSCServer.update()
	OTAUpdater.update()
	SlimeVRServer.update()
