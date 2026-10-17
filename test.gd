extends Node

var server:PacketPeerUDP = PacketPeerUDP.new()
var quat:Quaternion = Quaternion(Vector3.LEFT,deg_to_rad(-90))

func _ready() -> void:
	server.bind(0,"127.69.2.1")
	server.set_dest_address("127.0.0.1",6969)
	var packet:PacketUDP = PacketUDP.new()
	
	packet.addType(3)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(0)
	packet.addInt(22)
	packet.addShortString("0.7.3")
	packet.addByte8(1)
	packet.addByte8(2)
	packet.addByte8(3)
	packet.addByte8(4)
	packet.addByte8(5)
	packet.addByte8(6)
	packet.addByte8(0)
	
	var printy:PacketUDP = PacketUDP.new(packet.get_buffer(),
		PacketUDP.TYPE,
		PacketUDP.INT,
		PacketUDP.INT,
		PacketUDP.INT,
		PacketUDP.INT,
		PacketUDP.INT,
		PacketUDP.INT,
		PacketUDP.INT,
		PacketUDP.SHORT_STRING,
		PacketUDP.BYTE8,
		PacketUDP.BYTE8,
		PacketUDP.BYTE8,
		PacketUDP.BYTE8,
		PacketUDP.BYTE8,
		PacketUDP.BYTE8,
		PacketUDP.BYTE8,
	)
	
	print(printy)
	
	server.put_packet(packet.get_buffer())
	
	var buffer:PackedByteArray = []
	
	buffer.append_array([0,0,0,15])
	buffer.append_array([0,0,0,0])
	buffer.append_array([0,0,0,0])
	buffer.append(0)
	buffer.append(1)
	buffer.append(0)
	
	server.put_packet(buffer)
	buffer.clear()
	
	buffer.append_array([0,0,0,19])
	buffer.append_array([0,0,0,0])
	buffer.append_array([0,0,0,0])
	buffer.append(255)
	buffer.append(1)
	
	server.put_packet(buffer)
	buffer.clear()
	
	buffer.append_array([0,0,0,12])
	buffer.append_array([0,0,0,0])
	buffer.append_array([0,0,0,0])
	var v:PackedByteArray = [0,0,0,0]
	v.encode_float(0,3.2)
	v.reverse()
	buffer.append_array(v)
	var p:PackedByteArray = [0,0,0,0]
	p.encode_float(0,1.0)
	p.reverse()
	buffer.append_array(p)
	
	server.put_packet(buffer)

func _physics_process(_delta: float) -> void:
	quat = (quat * Quaternion(Vector3.UP,deg_to_rad(1))).normalized()


func _process(_delta: float) -> void:
	while server.get_available_packet_count() > 0:
		var buffer:PackedByteArray = server.get_packet()
		if buffer.get(3) == 1:
			server.put_packet([0,0,0,1,0,0,0,0,0,0,0])
			continue
		if buffer.get(3) == 10:
			server.put_packet(buffer)
			continue
		print(buffer.slice(1).get_string_from_utf8())
		print(server.get_packet_ip(), ", ", server.get_packet_port(), ", ")
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
