extends Node

var server:PacketPeerUDP = PacketPeerUDP.new()

var timesetemp:int = 0
var ip:String = ""

func _ready() -> void:
	server.bind(6767)

func _process(_delta: float) -> void:
	while server.get_available_packet_count() > 0:
		var buffer:PackedByteArray = server.get_packet()
		if (buffer[3] == 1):
			timesetemp = Time.get_ticks_msec()
			ip = server.get_packet_ip()
			server.set_dest_address(ip,6767)
			server.put_packet([0,0,0,2])
		if (buffer[3] == 4):
			timesetemp = Time.get_ticks_msec()
	if (ip != ""):
		if (Time.get_ticks_msec() - timesetemp > 1000):
			server.put_packet([0,0,0,3])
		var packet:PackedByteArray = [0,0,0,5]
		var vibration:PackedByteArray = [0,0,0,0]
		vibration.encode_float(0,0.5)
		packet.append_array(vibration)
		var duration:PackedByteArray = [0,0,0,0]
		duration.encode_s32(0,10)
		packet.append_array(duration)
		packet.append(0)
		server.put_packet(packet)
