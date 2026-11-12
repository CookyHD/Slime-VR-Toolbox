extends Node

var tracker1:VirtualTracker = VirtualTracker.new()
var tracker2:VirtualTracker = VirtualTracker.new()

func _ready() -> void:
	VRChatOSCServer.start()
	SlimeVRServer.setup()
	ControllerHandler.setup()
	tracker1.setup()
	tracker2.index = 1
	tracker2.setup()

func _physics_process(_delta: float) -> void:
	tracker1.update_tracking()
	tracker2.update_tracking()

func _process(delta: float) -> void:
	VRChatOSCServer.update()
	SlimeVRServer.update()
	OTAUpdater.update()
	var con:Controller = ControllerHandler.Controllers[0]
	con.update(delta)
	$"Rotation View".update(con.rotation, con.acceleration)
	tracker1.rotation = con.rotation
	tracker1.acceleration = con.acceleration
	tracker1.update()
	var con2:Controller = ControllerHandler.Controllers[1]
	con2.update(delta)
	tracker2.rotation = con2.rotation
	tracker2.acceleration = con2.acceleration
	tracker2.update()
