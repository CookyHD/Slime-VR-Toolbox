extends Node

const VIRTUAL_TRACKER_IP:String = "127.67.67.0"

const MAX_VERTIUL_TRACKERS:int = 255

const HAPTIC_PORT:int = 6767

func get_virtual_ip(id:int) -> String:
	assert(
		Math.in_range(id,0,MAX_VERTIUL_TRACKERS),
		"ERROR: TO MANY VIRTUAL TRACKERS!"
	)
	return VIRTUAL_TRACKER_IP.replace("0",str(id))
