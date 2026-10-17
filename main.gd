extends Node

func _ready() -> void:
	Discord.setup()
	SlimeVRServer.setup()

func _process(_delta: float) -> void:
	OTAUpdater.update()
	SlimeVRServer.update()
