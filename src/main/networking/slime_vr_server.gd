extends Node

var Websocket:WebSocketPeer = WebSocketPeer.new()
var isConnected:bool = false

var Trackers:Array[SlimeVRTracker] = []

func setup() -> void:
	load_tracker()
	Websocket.connect_to_url("ws://" + Settings.get_setting("slimevr/webserver/address") + ":" + str(int(Settings.get_setting("slimevr/webserver/port"))))

func reconnect() -> void:
	Websocket.connect_to_url("ws://" + Settings.get_setting("slimevr/webserver/address") + ":" + str(int(Settings.get_setting("slimevr/webserver/port"))))

func save_tracker() -> void:
	var arr:Array = Settings.wrap_setting_array("slimevr/saved_trackers")
	for tracker:SlimeVRTracker in Trackers:
		var value:String = tracker.identity
		if !arr.has(value):
			arr.append(value)

func load_tracker() -> void:
	var arr:Array = Settings.wrap_setting_array("slimevr/saved_trackers")
	for value:String in arr:
		var values:PackedStringArray = value.split("-")
		var mac:String = values[0]
		var index:int = int(values[1])
		Trackers.append(SlimeVRTracker.new(mac, index))

func update() -> void:
	Websocket.poll()
	match Websocket.get_ready_state():
		Websocket.STATE_OPEN:
			if !isConnected:
				on_open()
			while Websocket.get_available_packet_count() > 0:
				var buffer:PackedByteArray = Websocket.get_packet()
				if Websocket.was_string_packet(): continue
				on_message(buffer)
		Websocket.STATE_CLOSED:
			if isConnected:
				on_close()

func on_close() -> void:
	isConnected= false
	Utils.log.warn("Disconnected from SlimeVR.")
	for tracker:SlimeVRTracker in Trackers:
		tracker.set_info({"status": 1})

func on_open() -> void:
	isConnected = true
	Utils.log.info("Connected to SlimeVR.")
	Websocket.put_packet(SolarXRPackets.get_start_data_feed_package())

func on_message(buffer:PackedByteArray) -> void:
	var message:SolarXR.MessageBundle = FlatBuffer.get_root(buffer,SolarXR.MessageBundle)
	
	#INFO: NOT NEEDED!
	#TODO: Fix
	#if message.rpc_msgs_size() > 0:
	#	for rpc_message:SolarXR.RpcMessageHeader in message.rpc_msgs():
	#		if !rpc_message.message_is_present(): continue
	#		if rpc_message.message_type() == SolarXR.RpcMessage.TRACKING_CHECKLIST_RESPONSE:
	#			if !(rpc_message.message() as SolarXR.TrackingChecklistResponse).steps_is_present(): continue
	#			for step:SolarXR.TrackingChecklistStep in (rpc_message.message() as SolarXR.TrackingChecklistResponse).steps():
	#				if !step.id_is_present(): continue
	#				Websocket.put_packet(SolarXRPackets.test(step.id()))
	
	#INFO: NOT NEEDED!
	#if message.pub_sub_msgs_size() > 0:
	#	for pub_sub_message:SolarXR.PubSubHeader in message.pub_sub_msgs():
	#		pass
	
	if message.data_feed_msgs_size() > 0:
		for data_feed_message:SolarXR.DataFeedMessageHeader in message.data_feed_msgs():
			for device:SolarXR.DeviceData in SolarXRPackets.get_devices(data_feed_message):
				for tracker:SolarXR.TrackerData in SolarXRPackets.get_trackers(device):
					var mac:String = SolarXRPackets.get_device_mac(device) 
					var index:int = SolarXRPackets.get_tracker_index(tracker)
					var info:Dictionary[String,Variant] = {}
					
					info["ip"] = SolarXRPackets.get_device_ip(device)
					info["version"] = SolarXRPackets.get_device_version(device)
					
					info["rotation"] = SolarXRPackets.get_tracker_rotation(tracker)
					info["acceleration"] = SolarXRPackets.get_tracker_acceleration(tracker)
					info["alligned_offset"] = SolarXRPackets.get_tracker_alligned_offset(tracker)
					
					info["status"] = SolarXRPackets.get_tracker_status(tracker)
					
					#Ignoring Fusion Trackers!
					if info["version"].contains("ToolBox") && mac.begins_with("80:08:5F") && mac.ends_with("F1"):
						continue
					
					if has_tracker(mac, index):
						get_tracker(mac, index).set_info(info)
					else:
						Trackers.append(SlimeVRTracker.new(mac, index, info))

func has_tracker(mac:String, index:int) -> bool:
	for tracker:SlimeVRTracker in Trackers:
		if (tracker.get_mac() == mac and tracker.get_index() == index): return true
	return false

func get_tracker(mac:String, index:int) -> SlimeVRTracker:
	for tracker:SlimeVRTracker in Trackers:
		if (tracker.get_mac() == mac and tracker.get_index() == index): return tracker
	return null
