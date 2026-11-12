extends Object
class_name VirtualTracker

var peer:PacketPeerUDP = PacketPeerUDP.new()

var rotation:Quaternion = Quaternion.IDENTITY
var acceleration:Vector3 = Vector3.ZERO

var past_rotation:Quaternion
var past_acceleration:Vector3

var index:int = 0
var type:TrackerType = TrackerType.FUSION

enum TrackerType {
	CONTROLLER,
	FUSION
}

const MARGIN:float = 0.1
const TIMEOUT:int = 3000

var isCalibrated:bool = false
var isConnected:bool = false
var LastPacketTimestemp:int = 0;

var await_discovery_flag:bool = false

func setup() -> void:
	peer.bind(0, Global.newVirutalAddress())
	peer.set_dest_address(Settings.get_setting("slimevr/address"), Settings.get_setting("slimevr/port"))

func send_discovery_message() -> void:
	
	Utils.log.info("VTracker-"+str(index)+": Looking For SlimeVR Server...")
	
	peer.put_packet(UDP_PacketBuilder.new()
		.addType(3)
		.addInt(0)
		.addInt(0)
		.addInt(0)
		.addInt(0)
		.addInt(0)
		.addInt(0)
		.addInt(22)
		.addShortString(Global.TRACKER_VERSION + " ToolBox")
		.addByte8(128)											# 80
		.addByte8(8)											# 08
		.addByte8(95)											# 5F
		.addByte16(index)										# 16bit Index Number
		.addByte8(240 + int( type )) 							# Converts to 0xF<Type>
		.addByte8()
		.finish()
	)

func on_connect() -> void:
	isConnected = true
	Utils.log.info(str(index)+"-VTracker: Connected to SlimeVR Server.")
	set_calibrated(isCalibrated)

func on_disconnect() -> void:
	isConnected = false
	Utils.log.warn(str(index)+"-VTracker: Disconnected to SlimeVR Server.")

func update_tracking() -> void:
	
	if !isConnected: return
	
	if rotation.angle_to(past_rotation) > deg_to_rad(MARGIN):
		past_rotation = rotation
		peer.put_packet(UDP_PacketBuilder.new()
			.addType(17)
			.addByte8()
			.addByte8(1)
			.addFloat(rotation.x)
			.addFloat(rotation.y)
			.addFloat(rotation.z)
			.addFloat(rotation.w)
			.addByte8()
			.finish()
		)
	
	if acceleration.distance_to(past_acceleration) > MARGIN:
		past_acceleration = acceleration
		peer.put_packet(UDP_PacketBuilder.new()
			.addType(4)
			.addFloat(acceleration.x)
			.addFloat(acceleration.y)
			.addFloat(acceleration.z)
			.addByte8()
			.finish()
		)

func set_signal_strength(amount:float) -> void:
	
	if !isConnected: return
	
	var strength:int = 90 - roundi( 60.0 * clampf( amount, 0.0, 1.0 ) )
	
	peer.put_packet(UDP_PacketBuilder.new()
		.addType(19)
		.addByte8(255)
		.addByte8(-strength)
		.finish()
	)

func set_battery(amount:float, charging:bool = false) -> void:
	
	if !isConnected: return
	
	var voltage:float = Utils.if_else(charging, 5.0, 3.2)
	
	peer.put_packet(UDP_PacketBuilder.new()
		.addType(12)
		.addFloat(voltage)
		.addFloat(clampf(amount,0.0,1.0))
		.finish()
	)

func set_calibrated(value:bool) -> void:
	
	if !isConnected: return
	
	var bits:int = 0
	bits |= 0 << 0
	bits |= 0 << 1
	bits |= 1 << 2
	bits |= 1 << 3
	bits |= 0 << 4
	bits |= 0 << 5
	
	peer.put_packet(UDP_PacketBuilder.new()
		.addType(15)
		.addByte8(0)
		.addByte8(1)
		.addByte8(0)
		.addByte16(bits)
		.addByte8(Utils.if_else(value, 1, 0))
		.finish()
	)

func update() -> void:
	
	if LastPacketTimestemp + TIMEOUT < Utils.millis() and isConnected:
		LastPacketTimestemp = 0
		on_disconnect()
	
	if !isConnected and !await_discovery_flag:
		await_discovery_flag = true
		send_discovery_message()
		await Utils.timer(1)
		await_discovery_flag = false
	
	while peer.get_available_packet_count() > 0:
		
		var buffer:PackedByteArray = peer.get_packet()
		var packet:UDP_PacketReader = UDP_PacketReader.new(buffer)
		
		LastPacketTimestemp = Utils.millis()
		
		if buffer[0] == 3 and !isConnected:
			if buffer.slice(1).get_string_from_ascii().contains("Hey OVR =D 5"):
				on_connect()
		else:
			match packet.readType():
				1: 
					peer.put_packet(UDP_PacketBuilder.new()
						.addType(1)
						.finish()
					)
				10:
					peer.put_packet(buffer)
