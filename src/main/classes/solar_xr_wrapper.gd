extends Node
class_name SolarXRPackets

@warning_ignore_start("static_called_on_instance")

static func get_start_data_feed_package() -> PackedByteArray:
	var fbb:FlatBufferBuilder = FlatBufferBuilder.new()
	var offset = SolarXR.create_MessageBundle(
		fbb,
		fbb.create_vector_of_table(
			[
				[
					SolarXR.DataFeedMessage.START_DATA_FEED,
					SolarXR.create_StartDataFeed(
						fbb,
						fbb.create_vector_of_table(
							[
								[
									10,
									SolarXR.create_DeviceDataMask(
										fbb,
										SolarXR.create_TrackerDataMask(
											fbb,
											true,
											true,
											true,
											false,
											false,
											false,
											false,
											true,
											true,
											true,
											false,
											false,
											true
										),
										true
									),
									0,
									false,
									false,
									false
								]
							],
							func(_fbb:FlatBufferBuilder, array:Array) -> int: return SolarXR.create_DataFeedConfig(fbb, array[0], array[1], array[2], array[3], array[4], array[5])
						)
					)
				]
			],
			func (_fbb:FlatBufferBuilder, array:Array) -> int: return SolarXR.create_DataFeedMessageHeader(fbb, array[0], array[1])
		),
		0,
		0
	)
	fbb.finish(offset)
	return fbb.get_buffer()

static func get_quaternion(data:SolarXR.Quat) -> Quaternion:
	if data == null: return Quaternion.IDENTITY
	return Quaternion(data.x, data.y, data.z, data.w)

static func get_vector(data:SolarXR.Vec3f) -> Vector3:
	if data == null: return Vector3.ZERO
	return Vector3(data.x, data.y, data.z)

static func get_devices(data:SolarXR.DataFeedMessageHeader) -> Array[SolarXR.DeviceData]:
	if !data.message_is_present(): return []
	if (data.message() as SolarXR.DataFeedUpdate).devices().is_empty(): return []
	return (data.message() as SolarXR.DataFeedUpdate).devices()

static func get_trackers(data:SolarXR.DeviceData) -> Array[SolarXR.TrackerData]:
	if data.trackers().is_empty(): return []
	return data.trackers()

static func get_device_mac(data:SolarXR.DeviceData) -> String:
	var mac:String = "00:00:00:00:00:00"
	if !data.hardware_info_is_present(): return mac
	if !(data.hardware_info() as SolarXR.HardwareInfo).hardware_identifier_is_present(): return mac
	return (data.hardware_info() as SolarXR.HardwareInfo).hardware_identifier()

static func get_tracker_rotation(data:SolarXR.TrackerData) -> Quaternion:
	return get_quaternion(data.rotation())

static func get_tracker_acceleration(data:SolarXR.TrackerData) -> Vector3:
	return get_vector(data.linear_acceleration())

static func get_tracker_alligned_offset(data:SolarXR.TrackerData) -> float:
	if !data.stay_aligned_is_present(): return 0.0
	if !(data.stay_aligned() as SolarXR.StayAlignedTracker).yaw_correction_in_deg_is_present(): return 0.0
	return (data.stay_aligned() as SolarXR.StayAlignedTracker).yaw_correction_in_deg()

static func get_tracker_index(data:SolarXR.TrackerData) -> int:
	if !data.tracker_id_is_present(): return -1
	return data.tracker_id().tracker_num()

static func get_tracker_status(data:SolarXR.TrackerData) -> int:
	if !data.status_is_present(): return 0
	return int(data.status())
