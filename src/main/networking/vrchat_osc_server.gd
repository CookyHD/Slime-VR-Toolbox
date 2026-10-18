extends Node

const PORT:int = 9001

var server:PacketPeerUDP = PacketPeerUDP.new()

const ROUTER_PORT:int = 9002
const ROUTER_ADDRESS:String = "127.0.0.1"

var router_server:PacketPeerUDP = PacketPeerUDP.new()

var connected:bool = false
var use_router:bool = false

var callbacks:Array[Pair] = []

func add_callback(object:Object, func_name:StringName = &"on_osc_message") -> void:
	callbacks.append(Pair.of(object, func_name))

func start() -> void:
	server.bind(PORT, Utils.localIP)
	if use_router:
		router_server.bind(0)
		router_server.set_dest_address(ROUTER_ADDRESS, ROUTER_PORT)

func terminate() -> void:
	server.close()
	if use_router:
		router_server.close()

func update() -> void:
	while server.get_available_packet_count() > 0:
		var buffer:PackedByteArray = server.get_packet()
		if use_router:
			router_server.put_packet(buffer)
		var comma:int = buffer.find(44)
		var cmd:String = buffer.slice(0, comma).get_string_from_utf8()
		var type:String = buffer.slice(comma+1, buffer.find(0, comma)).get_string_from_utf8()
		var value:Variant
		match type:
			"f": value = buffer.slice(buffer.size()-4).decode_float(0)
			"i": value = buffer.slice(buffer.size()-4).decode_s32(0)
			"T": value = true
			"F": value = false
			_: value = null
		for callback:Pair in callbacks:
			if callback.first == null:
				callbacks.erase(callback)
				continue
			callback.first.call(callback.secound, Pair.of(cmd, value))
