extends Node

var OSCPeer:PacketPeerUDP = PacketPeerUDP.new()

var OSCRouterPeer:PacketPeerUDP = PacketPeerUDP.new()

var AwaitReconnect:bool = false

var OSCRouterDestenationError:Error = OK
var OSCError:Error = OK
var OSCRouterError:Error = OK

var useRouter:bool = false

var Callbacks:Array[Pair] = []

func add_callback(object:Object, func_name:StringName = &"on_osc_message") -> void:
	Callbacks.append(Pair.of(object, func_name))

func start() -> void:
	useRouter = Settings.get_setting("osc/router/enabled")
	Utils.err_warp(OSCPeer.bind(Settings.get_setting("osc/port"), Global.localIP), OSCError)
	if useRouter:
		Utils.err_warp(OSCRouterPeer.set_dest_address(Settings.get_setting("osc/router/port"), Settings.get_setting("osc/router/address")), OSCRouterDestenationError)

func restart() -> void:
	terminate()
	start()

func terminate() -> void:
	OSCPeer.close()
	if useRouter:
		OSCRouterPeer.close()

func update() -> void:
	if OSCPeer.is_bound():
		while OSCPeer.get_available_packet_count() > 0:
			var buffer:PackedByteArray = OSCPeer.get_packet()
			if useRouter and OSCRouterPeer.is_bound() and OSCRouterDestenationError == OK:
				OSCRouterPeer.put_packet(buffer)
			var comma:int = buffer.find(44)
			var command:String = buffer.slice(0, comma).get_string_from_utf8()
			var type:String = buffer.slice(comma+1, buffer.find(0, comma)).get_string_from_utf8()
			var value:Variant
			match type:
				"f": value = buffer.slice(buffer.size()-4).decode_float(0)
				"i": value = buffer.slice(buffer.size()-4).decode_s32(0)
				"T": value = true
				"F": value = false
				_: value = null
			for callback:Pair in Callbacks:
				if callback.first == null:
					Callbacks.erase(callback)
					continue
				callback.first.call(callback.secound, Pair.of(command, value))
	else:
		if AwaitReconnect: return
		AwaitReconnect = true
		Utils.log.info("VRChatOSC: Trying Reconnecting in 5s.")
		await Utils.timer(5)
		restart()
		AwaitReconnect = false
