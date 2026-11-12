extends Node

var server:UDPServer = UDPServer.new()

var connections:Array[PacketPeerUDP] = []

func _ready() -> void:
	server.listen(6767, "255.255.255.255") 

func _process(delta: float) -> void:
	server.poll()
	while server.is_connection_available():
		connections.append(server.take_connection())
	print(connections)
