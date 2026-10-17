extends Node

const PORT:int = 6767

var Server:PacketPeerUDP = PacketPeerUDP.new()

var Haptics:Array[Haptic] = []

var Vibrations:Array[VibrationPacket] = []

func setup() -> void:
	Input.joy_connection_changed.connect(on_con_connection)
	Server.bind(PORT, "0.0.0.0")

func update() -> void:
	while Server.get_available_packet_count() > 0:
		var buffer:PackedByteArray = Server.get_packet()
		print(buffer)

func send(address:String, data:PackedByteArray) -> void:
	Server.set_dest_address(address, PORT)
	Server.put_packet(data)

func on_con_connection(id:int, aktive:bool) -> void:
	print(id,aktive)
