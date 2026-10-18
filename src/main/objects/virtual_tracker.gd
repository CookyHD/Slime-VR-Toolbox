extends Node

var server:PacketPeerUDP = PacketPeerUDP.new()
var quat:Quaternion = Quaternion(Vector3.LEFT,deg_to_rad(-90))

func _ready() -> void:
	server.bind(0,"127.69.2.1")
	server.set_dest_address("127.0.0.1",6969)
	var packet:UDP_PacketBuilder = UDP_PacketBuilder.new()
	
	packet.addType(3)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(22)
	packet.addShortString("ToolBox v1")
	packet.addByte8(1)
	packet.addByte8(2)
	packet.addByte8(3)
	packet.addByte8(4)
	packet.addByte8(5)
	packet.addByte8(6)
	packet.addByte8(0)
	
	server.put_packet(packet.finish())
	packet.reset()
	
	packet.addType(15)
	packet.addByte8(0)
	packet.addByte8(1)
	packet.addByte8(0)
	
	server.put_packet(packet.finish())
	packet.reset()
	
	packet.addType(19)
	packet.addByte8(255)
	packet.addByte8(1)
	
	server.put_packet(packet.finish())
	packet.reset()
	
	packet.addType(12)
	packet.addFloat(3.2)
	packet.addFloat(1.0)
	
	server.put_packet(packet.finish())

func _physics_process(_delta: float) -> void:
	quat = (quat * Quaternion(Vector3.UP,deg_to_rad(15)))


func _process(_delta: float) -> void:
	while server.get_available_packet_count() > 0:
		var buffer:PackedByteArray = server.get_packet()
		if buffer.get(3) == 1:
			server.put_packet([0,0,0,1,0,0,0,0,0,0,0])
			continue
		if buffer.get(3) == 10:
			server.put_packet(buffer)
			continue
	var buffer:PackedByteArray = []
	buffer.append_array([0,0,0,17])
	buffer.append_array([0,0,0,0])
	buffer.append_array([0,0,0,0])
	buffer.append(0)
	buffer.append(1)
	var x:PackedByteArray = [0,0,0,0]
	x.encode_float(0,quat.x)
	x.reverse()
	var y:PackedByteArray = [0,0,0,0]
	y.encode_float(0,quat.y)
	y.reverse()
	var z:PackedByteArray = [0,0,0,0]
	z.encode_float(0,quat.z)
	z.reverse()
	var w:PackedByteArray = [0,0,0,0]
	w.encode_float(0,quat.w)
	w.reverse()
	buffer.append_array(x)
	buffer.append_array(y)
	buffer.append_array(z)
	buffer.append_array(w)
	buffer.append(0)
	server.put_packet(buffer)
