extends Node

const PORT:int = 21110
const URL:String = "ws://localhost"

var Websocket:WebSocketPeer = WebSocketPeer.new()
var isSetup:bool = false

var Trackers:Array[SlimeVRTracker] = []

func setup() -> void:
	Websocket.connect_to_url(URL + ":" + str(PORT))

func update() -> void:
	Websocket.poll()
	match Websocket.get_ready_state():
		Websocket.STATE_OPEN:
			if !isSetup:
				on_open()
			while Websocket.get_available_packet_count() > 0:
				var buffer:PackedByteArray = Websocket.get_packet()
				if Websocket.was_string_packet(): continue
				on_message(buffer)
		Websocket.STATE_CLOSED:
			if isSetup:
				on_close()

func on_close() -> void:
	isSetup = false
	for tracker:SlimeVRTracker in Trackers:
		tracker.set_info({}) #Show Disconnected

func on_open() -> void:
	isSetup = true
	Websocket.put_packet(Packages.get_start_data_feed_package())

func on_message(buffer:PackedByteArray) -> void:
	var message:SolarXR.MessageBundle = FlatBuffer.get_root(buffer,SolarXR.MessageBundle)
	
	#if message.rpc_msgs_size() > 0:
	#	for rpc_message:SolarXR.RpcMessageHeader in message.rpc_msgs():
	#		pass

	#if message.pub_sub_msgs_size() > 0:
	#	for pub_sub_message:SolarXR.PubSubHeader in message.pub_sub_msgs():
	#		pass
	
	if message.data_feed_msgs_size() > 0:
		for data_feed_message:SolarXR.DataFeedMessageHeader in message.data_feed_msgs():
			for device:SolarXR.DeviceData in Packages.get_devices(data_feed_message):
				for tracker:SolarXR.TrackerData in Packages.get_trackers(device):
					var mac:String = Packages.get_device_mac(device) 
					var index:int = Packages.get_tracker_index(tracker)
					var info:Dictionary[String,Variant] = {}
					
					info["rotation"] = Packages.get_tracker_rotation(tracker)
					info["acceleration"] = Packages.get_tracker_acceleration(tracker)
					info["alligned_offset"] = Packages.get_tracker_alligned_offset(tracker)
					
					info["status"] = Packages.get_tracker_status(tracker)
					
					if has_tracker(mac, index):
						get_tracker(mac, index).set_info(info)
					else:
						Trackers.append(SlimeVRTracker.new(mac, index, info))

func has_tracker(mac:String, index:int) -> bool:
	for tracker:SlimeVRTracker in Trackers:
		if (tracker.mac == mac and tracker.index == index): return true
	return false

func get_tracker(mac:String, index:int) -> SlimeVRTracker:
	for tracker:SlimeVRTracker in Trackers:
		if (tracker.mac == mac and tracker.index == index): return tracker
	return null
