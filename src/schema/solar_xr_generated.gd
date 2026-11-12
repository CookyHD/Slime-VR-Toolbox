extends Object
class_name SolarXR

@warning_ignore_start("shadowed_global_identifier")
@warning_ignore_start("shadowed_variable_base_class")
@warning_ignore_start("shadowed_variable")

@warning_ignore_start('unsafe_method_access')
@warning_ignore_start('unsafe_call_argument')

enum FirmwareErrorCode {
	OTHER = 0,
	DISCONNECTED = 1,
	OCCLUDED = 2,
	IMU_ERROR = 3
}

enum FilteringType {
	NONE = 0,
	SMOOTHING = 1,
	PREDICTION = 2
}

enum TrackerRole {
	NONE = 0,
	WAIST = 1,
	LEFT_FOOT = 2,
	RIGHT_FOOT = 3,
	CHEST = 4,
	LEFT_KNEE = 5,
	RIGHT_KNEE = 6,
	LEFT_ELBOW = 7,
	RIGHT_ELBOW = 8,
	LEFT_SHOULDER = 9,
	RIGHT_SHOULDER = 10,
	LEFT_HAND = 11,
	RIGHT_HAND = 12,
	LEFT_CONTROLLER = 13,
	RIGHT_CONTROLLER = 14,
	HEAD = 15,
	NECK = 16,
	CAMERA = 17,
	KEYBOARD = 18,
	HMD = 19,
	BEACON = 20,
	GENERIC_CONTROLLER = 21
}

enum BodyPart {
	NONE = 0,
	HEAD = 1,
	NECK = 2,
	CHEST = 3,
	WAIST = 4,
	HIP = 5,
	LEFT_UPPER_LEG = 6,
	RIGHT_UPPER_LEG = 7,
	LEFT_LOWER_LEG = 8,
	RIGHT_LOWER_LEG = 9,
	LEFT_FOOT = 10,
	RIGHT_FOOT = 11,
	LEFT_LOWER_ARM = 14,
	RIGHT_LOWER_ARM = 15,
	LEFT_UPPER_ARM = 16,
	RIGHT_UPPER_ARM = 17,
	LEFT_HAND = 18,
	RIGHT_HAND = 19,
	LEFT_SHOULDER = 20,
	RIGHT_SHOULDER = 21,
	UPPER_CHEST = 22,
	LEFT_HIP = 23,
	RIGHT_HIP = 24,
	LEFT_THUMB_METACARPAL = 25,
	LEFT_THUMB_PROXIMAL = 26,
	LEFT_THUMB_DISTAL = 27,
	LEFT_INDEX_PROXIMAL = 28,
	LEFT_INDEX_INTERMEDIATE = 29,
	LEFT_INDEX_DISTAL = 30,
	LEFT_MIDDLE_PROXIMAL = 31,
	LEFT_MIDDLE_INTERMEDIATE = 32,
	LEFT_MIDDLE_DISTAL = 33,
	LEFT_RING_PROXIMAL = 34,
	LEFT_RING_INTERMEDIATE = 35,
	LEFT_RING_DISTAL = 36,
	LEFT_LITTLE_PROXIMAL = 37,
	LEFT_LITTLE_INTERMEDIATE = 38,
	LEFT_LITTLE_DISTAL = 39,
	RIGHT_THUMB_METACARPAL = 40,
	RIGHT_THUMB_PROXIMAL = 41,
	RIGHT_THUMB_DISTAL = 42,
	RIGHT_INDEX_PROXIMAL = 43,
	RIGHT_INDEX_INTERMEDIATE = 44,
	RIGHT_INDEX_DISTAL = 45,
	RIGHT_MIDDLE_PROXIMAL = 46,
	RIGHT_MIDDLE_INTERMEDIATE = 47,
	RIGHT_MIDDLE_DISTAL = 48,
	RIGHT_RING_PROXIMAL = 49,
	RIGHT_RING_INTERMEDIATE = 50,
	RIGHT_RING_DISTAL = 51,
	RIGHT_LITTLE_PROXIMAL = 52,
	RIGHT_LITTLE_INTERMEDIATE = 53,
	RIGHT_LITTLE_DISTAL = 54
}

enum TrackerStatus {
	NONE = 0,
	DISCONNECTED = 1,
	OK = 2,
	BUSY = 3,
	ERROR = 4,
	OCCLUDED = 5,
	TIMED_OUT = 6
}

enum MagnetometerStatus {
	NOT_SUPPORTED = 0,
	DISABLED = 1,
	ENABLED = 2
}

enum McuType {
	OTHER = 0,
	ESP_8266 = 1,
	ESP_32 = 2,
	OWOTRACK_ANDROID = 3,
	WRANGLER = 4,
	OWOTRACK_IOS = 5,
	ESP_32_C_3 = 6,
	MOCOPI = 7,
	HARITORA = 8,
	NRF_52 = 9,
	NRF_54_L = 10,
	DEV_RESERVED = 250
}

enum ImuType {
	OTHER = 0,
	MPU_9250 = 1,
	MPU_6500 = 2,
	BNO_080 = 3,
	BNO_085 = 4,
	BNO_055 = 5,
	MPU_6050 = 6,
	BNO_086 = 7,
	BMI_160 = 8,
	ICM_20948 = 9,
	ICM_42688 = 10,
	BMI_270 = 11,
	LSM_6_DS_3_TRC = 12,
	LSM_6_DSV = 13,
	LSM_6_DSO = 14,
	LSM_6_DSR = 15,
	ICM_45686 = 16,
	ICM_45605 = 17,
	ADC_RESISTANCE = 18,
	ICM_55686 = 19,
	DEV_RESERVED = 250
}

enum BoardType {
	UNKNOWN = 0,
	SLIMEVR_LEGACY = 1,
	SLIMEVR_DEV = 2,
	NODEMCU = 3,
	CUSTOM = 4,
	WROOM_32 = 5,
	WEMOSD_1_MINI = 6,
	TTGO_TBASE = 7,
	ESP_01 = 8,
	SLIMEVR = 9,
	LOLIN_C_3_MINI = 10,
	BEETLE_32_C_3 = 11,
	ESP_32_C_3_DEVKITM_1 = 12,
	OWOTRACK = 13,
	WRANGLER = 14,
	MOCOPI = 15,
	WEMOSWROOM_02 = 16,
	XIAO_ESP_32_C_3 = 17,
	HARITORA = 18,
	ESP_32_C_6_DEVKITC_1 = 19,
	GLOVE_IMU_SLIMEVR_DEV = 20,
	GESTURES = 21,
	SLIMEVR_V_1_2 = 22,
	ESP_32_S_3_SUPERMINI = 23,
	GENERIC_NRF = 24,
	SLIMEVR_BUTTERFLY_DEV = 25,
	SLIMEVR_BUTTERFLY = 26,
	DEV_RESERVED = 250
}

enum TrackerDataType {
	ROTATION = 0,
	FLEX_RESISTANCE = 1,
	FLEX_ANGLE = 2
}

enum DataFeedMessage {
	NONE = 0,
	POLL_DATA_FEED = 1,
	START_DATA_FEED = 2,
	DATA_FEED_UPDATE = 3,
	DATA_FEED_CONFIG = 4
}

## Verify the integrity of the DataFeedMessage union data
static func data_feed_message_verify(verifier:FlatBufferVerifier, value:Variant, type:DataFeedMessage) -> bool: 
	match type:
		DataFeedMessage.POLL_DATA_FEED:
			var poll_data_feed: PollDataFeed = value
			return poll_data_feed.verify(verifier)
		DataFeedMessage.START_DATA_FEED:
			var start_data_feed: StartDataFeed = value
			return start_data_feed.verify(verifier)
		DataFeedMessage.DATA_FEED_UPDATE:
			var data_feed_update: DataFeedUpdate = value
			return data_feed_update.verify(verifier)
		DataFeedMessage.DATA_FEED_CONFIG:
			var data_feed_config: DataFeedConfig = value
			return data_feed_config.verify(verifier)
	return false

enum RpcMessage {
	NONE = 0,
	HEARTBEAT_REQUEST = 1,
	HEARTBEAT_RESPONSE = 2,
	RESET_REQUEST = 3,
	RESET_RESPONSE = 4,
	ASSIGN_TRACKER_REQUEST = 5,
	SETTINGS_REQUEST = 6,
	SETTINGS_RESPONSE = 7,
	CHANGE_SETTINGS_REQUEST = 8,
	CLEAR_DRIFT_COMPENSATION_REQUEST = 9,
	RECORD_BVHREQUEST = 10,
	RECORD_BVHSTATUS = 11,
	SKELETON_CONFIG_REQUEST = 12,
	CHANGE_SKELETON_CONFIG_REQUEST = 13,
	SKELETON_RESET_ALL_REQUEST = 14,
	SKELETON_CONFIG_RESPONSE = 15,
	OPEN_SERIAL_REQUEST = 16,
	CLOSE_SERIAL_REQUEST = 17,
	SET_WIFI_REQUEST = 18,
	SERIAL_UPDATE_RESPONSE = 19,
	AUTO_BONE_PROCESS_REQUEST = 20,
	AUTO_BONE_PROCESS_STATUS_RESPONSE = 21,
	AUTO_BONE_EPOCH_RESPONSE = 22,
	OVERLAY_DISPLAY_MODE_REQUEST = 23,
	OVERLAY_DISPLAY_MODE_CHANGE_REQUEST = 24,
	OVERLAY_DISPLAY_MODE_RESPONSE = 25,
	SERIAL_TRACKER_REBOOT_REQUEST = 26,
	SERIAL_TRACKER_GET_INFO_REQUEST = 27,
	SERIAL_TRACKER_FACTORY_RESET_REQUEST = 28,
	SERIAL_DEVICES_REQUEST = 29,
	SERIAL_DEVICES_RESPONSE = 30,
	NEW_SERIAL_DEVICE_RESPONSE = 31,
	START_WIFI_PROVISIONING_REQUEST = 32,
	STOP_WIFI_PROVISIONING_REQUEST = 33,
	WIFI_PROVISIONING_STATUS_RESPONSE = 34,
	SERVER_INFOS_REQUEST = 35,
	SERVER_INFOS_RESPONSE = 36,
	LEG_TWEAKS_TMP_CHANGE = 37,
	LEG_TWEAKS_TMP_CLEAR = 38,
	TAP_DETECTION_SETUP_NOTIFICATION = 39,
	SET_PAUSE_TRACKING_REQUEST = 40,
	STATUS_SYSTEM_REQUEST = 41,
	STATUS_SYSTEM_RESPONSE = 42,
	STATUS_SYSTEM_UPDATE = 43,
	STATUS_SYSTEM_FIXED = 44,
	CLEAR_MOUNTING_RESET_REQUEST = 45,
	HEIGHT_REQUEST = 46,
	HEIGHT_RESPONSE = 47,
	AUTO_BONE_APPLY_REQUEST = 48,
	AUTO_BONE_STOP_RECORDING_REQUEST = 49,
	AUTO_BONE_CANCEL_RECORDING_REQUEST = 50,
	SAVE_FILE_NOTIFICATION = 51,
	TRACKING_PAUSE_STATE_REQUEST = 52,
	TRACKING_PAUSE_STATE_RESPONSE = 53,
	SERIAL_TRACKER_GET_WIFI_SCAN_REQUEST = 54,
	UNKNOWN_DEVICE_HANDSHAKE_NOTIFICATION = 55,
	ADD_UNKNOWN_DEVICE_REQUEST = 56,
	FORGET_DEVICE_REQUEST = 57,
	FIRMWARE_UPDATE_REQUEST = 58,
	FIRMWARE_UPDATE_STATUS_RESPONSE = 59,
	FIRMWARE_UPDATE_STOP_QUEUES_REQUEST = 60,
	SETTINGS_RESET_REQUEST = 61,
	MAG_TOGGLE_REQUEST = 62,
	MAG_TOGGLE_RESPONSE = 63,
	CHANGE_MAG_TOGGLE_REQUEST = 64,
	RECORD_BVHSTATUS_REQUEST = 65,
	VRCCONFIG_STATE_REQUEST = 66,
	VRCCONFIG_STATE_CHANGE_RESPONSE = 67,
	ENABLE_STAY_ALIGNED_REQUEST = 68,
	DETECT_STAY_ALIGNED_RELAXED_POSE_REQUEST = 69,
	RESET_STAY_ALIGNED_RELAXED_POSE_REQUEST = 70,
	SERIAL_TRACKER_CUSTOM_COMMAND_REQUEST = 71,
	VRCCONFIG_SETTING_TOGGLE_MUTE = 72,
	TRACKING_CHECKLIST_REQUEST = 73,
	TRACKING_CHECKLIST_RESPONSE = 74,
	IGNORE_TRACKING_CHECKLIST_STEP_REQUEST = 75,
	START_USER_HEIGHT_CALIBRATION = 76,
	CANCEL_USER_HEIGHT_CALIBRATION = 77,
	USER_HEIGHT_RECORDING_STATUS_RESPONSE = 78,
	KEYBIND_REQUEST = 79,
	CHANGE_KEYBIND_REQUEST = 80,
	KEYBIND_RESPONSE = 81,
	INSTALLED_INFO_REQUEST = 82,
	INSTALLED_INFO_RESPONSE = 83,
	OPEN_URI_REQUEST = 84,
	OPEN_URI_RESPONSE = 85,
	ENABLE_STEAM_VRDRIVER_REQUEST = 86
}

## Verify the integrity of the RpcMessage union data
static func rpc_message_verify(verifier:FlatBufferVerifier, value:Variant, type:RpcMessage) -> bool: 
	match type:
		RpcMessage.HEARTBEAT_REQUEST:
			var heartbeat_request: HeartbeatRequest = value
			return heartbeat_request.verify(verifier)
		RpcMessage.HEARTBEAT_RESPONSE:
			var heartbeat_response: HeartbeatResponse = value
			return heartbeat_response.verify(verifier)
		RpcMessage.RESET_REQUEST:
			var reset_request: ResetRequest = value
			return reset_request.verify(verifier)
		RpcMessage.RESET_RESPONSE:
			var reset_response: ResetResponse = value
			return reset_response.verify(verifier)
		RpcMessage.ASSIGN_TRACKER_REQUEST:
			var assign_tracker_request: AssignTrackerRequest = value
			return assign_tracker_request.verify(verifier)
		RpcMessage.SETTINGS_REQUEST:
			var settings_request: SettingsRequest = value
			return settings_request.verify(verifier)
		RpcMessage.SETTINGS_RESPONSE:
			var settings_response: SettingsResponse = value
			return settings_response.verify(verifier)
		RpcMessage.CHANGE_SETTINGS_REQUEST:
			var change_settings_request: ChangeSettingsRequest = value
			return change_settings_request.verify(verifier)
		RpcMessage.CLEAR_DRIFT_COMPENSATION_REQUEST:
			var clear_drift_compensation_request: ClearDriftCompensationRequest = value
			return clear_drift_compensation_request.verify(verifier)
		RpcMessage.RECORD_BVHREQUEST:
			var record_bvhrequest: RecordBVHRequest = value
			return record_bvhrequest.verify(verifier)
		RpcMessage.RECORD_BVHSTATUS:
			var record_bvhstatus: RecordBVHStatus = value
			return record_bvhstatus.verify(verifier)
		RpcMessage.SKELETON_CONFIG_REQUEST:
			var skeleton_config_request: SkeletonConfigRequest = value
			return skeleton_config_request.verify(verifier)
		RpcMessage.CHANGE_SKELETON_CONFIG_REQUEST:
			var change_skeleton_config_request: ChangeSkeletonConfigRequest = value
			return change_skeleton_config_request.verify(verifier)
		RpcMessage.SKELETON_RESET_ALL_REQUEST:
			var skeleton_reset_all_request: SkeletonResetAllRequest = value
			return skeleton_reset_all_request.verify(verifier)
		RpcMessage.SKELETON_CONFIG_RESPONSE:
			var skeleton_config_response: SkeletonConfigResponse = value
			return skeleton_config_response.verify(verifier)
		RpcMessage.OPEN_SERIAL_REQUEST:
			var open_serial_request: OpenSerialRequest = value
			return open_serial_request.verify(verifier)
		RpcMessage.CLOSE_SERIAL_REQUEST:
			var close_serial_request: CloseSerialRequest = value
			return close_serial_request.verify(verifier)
		RpcMessage.SET_WIFI_REQUEST:
			var set_wifi_request: SetWifiRequest = value
			return set_wifi_request.verify(verifier)
		RpcMessage.SERIAL_UPDATE_RESPONSE:
			var serial_update_response: SerialUpdateResponse = value
			return serial_update_response.verify(verifier)
		RpcMessage.AUTO_BONE_PROCESS_REQUEST:
			var auto_bone_process_request: AutoBoneProcessRequest = value
			return auto_bone_process_request.verify(verifier)
		RpcMessage.AUTO_BONE_PROCESS_STATUS_RESPONSE:
			var auto_bone_process_status_response: AutoBoneProcessStatusResponse = value
			return auto_bone_process_status_response.verify(verifier)
		RpcMessage.AUTO_BONE_EPOCH_RESPONSE:
			var auto_bone_epoch_response: AutoBoneEpochResponse = value
			return auto_bone_epoch_response.verify(verifier)
		RpcMessage.OVERLAY_DISPLAY_MODE_REQUEST:
			var overlay_display_mode_request: OverlayDisplayModeRequest = value
			return overlay_display_mode_request.verify(verifier)
		RpcMessage.OVERLAY_DISPLAY_MODE_CHANGE_REQUEST:
			var overlay_display_mode_change_request: OverlayDisplayModeChangeRequest = value
			return overlay_display_mode_change_request.verify(verifier)
		RpcMessage.OVERLAY_DISPLAY_MODE_RESPONSE:
			var overlay_display_mode_response: OverlayDisplayModeResponse = value
			return overlay_display_mode_response.verify(verifier)
		RpcMessage.SERIAL_TRACKER_REBOOT_REQUEST:
			var serial_tracker_reboot_request: SerialTrackerRebootRequest = value
			return serial_tracker_reboot_request.verify(verifier)
		RpcMessage.SERIAL_TRACKER_GET_INFO_REQUEST:
			var serial_tracker_get_info_request: SerialTrackerGetInfoRequest = value
			return serial_tracker_get_info_request.verify(verifier)
		RpcMessage.SERIAL_TRACKER_FACTORY_RESET_REQUEST:
			var serial_tracker_factory_reset_request: SerialTrackerFactoryResetRequest = value
			return serial_tracker_factory_reset_request.verify(verifier)
		RpcMessage.SERIAL_DEVICES_REQUEST:
			var serial_devices_request: SerialDevicesRequest = value
			return serial_devices_request.verify(verifier)
		RpcMessage.SERIAL_DEVICES_RESPONSE:
			var serial_devices_response: SerialDevicesResponse = value
			return serial_devices_response.verify(verifier)
		RpcMessage.NEW_SERIAL_DEVICE_RESPONSE:
			var new_serial_device_response: NewSerialDeviceResponse = value
			return new_serial_device_response.verify(verifier)
		RpcMessage.START_WIFI_PROVISIONING_REQUEST:
			var start_wifi_provisioning_request: StartWifiProvisioningRequest = value
			return start_wifi_provisioning_request.verify(verifier)
		RpcMessage.STOP_WIFI_PROVISIONING_REQUEST:
			var stop_wifi_provisioning_request: StopWifiProvisioningRequest = value
			return stop_wifi_provisioning_request.verify(verifier)
		RpcMessage.WIFI_PROVISIONING_STATUS_RESPONSE:
			var wifi_provisioning_status_response: WifiProvisioningStatusResponse = value
			return wifi_provisioning_status_response.verify(verifier)
		RpcMessage.SERVER_INFOS_REQUEST:
			var server_infos_request: ServerInfosRequest = value
			return server_infos_request.verify(verifier)
		RpcMessage.SERVER_INFOS_RESPONSE:
			var server_infos_response: ServerInfosResponse = value
			return server_infos_response.verify(verifier)
		RpcMessage.LEG_TWEAKS_TMP_CHANGE:
			var leg_tweaks_tmp_change: LegTweaksTmpChange = value
			return leg_tweaks_tmp_change.verify(verifier)
		RpcMessage.LEG_TWEAKS_TMP_CLEAR:
			var leg_tweaks_tmp_clear: LegTweaksTmpClear = value
			return leg_tweaks_tmp_clear.verify(verifier)
		RpcMessage.TAP_DETECTION_SETUP_NOTIFICATION:
			var tap_detection_setup_notification: TapDetectionSetupNotification = value
			return tap_detection_setup_notification.verify(verifier)
		RpcMessage.SET_PAUSE_TRACKING_REQUEST:
			var set_pause_tracking_request: SetPauseTrackingRequest = value
			return set_pause_tracking_request.verify(verifier)
		RpcMessage.STATUS_SYSTEM_REQUEST:
			var status_system_request: StatusSystemRequest = value
			return status_system_request.verify(verifier)
		RpcMessage.STATUS_SYSTEM_RESPONSE:
			var status_system_response: StatusSystemResponse = value
			return status_system_response.verify(verifier)
		RpcMessage.STATUS_SYSTEM_UPDATE:
			var status_system_update: StatusSystemUpdate = value
			return status_system_update.verify(verifier)
		RpcMessage.STATUS_SYSTEM_FIXED:
			var status_system_fixed: StatusSystemFixed = value
			return status_system_fixed.verify(verifier)
		RpcMessage.CLEAR_MOUNTING_RESET_REQUEST:
			var clear_mounting_reset_request: ClearMountingResetRequest = value
			return clear_mounting_reset_request.verify(verifier)
		RpcMessage.HEIGHT_REQUEST:
			var height_request: HeightRequest = value
			return height_request.verify(verifier)
		RpcMessage.HEIGHT_RESPONSE:
			var height_response: HeightResponse = value
			return height_response.verify(verifier)
		RpcMessage.AUTO_BONE_APPLY_REQUEST:
			var auto_bone_apply_request: AutoBoneApplyRequest = value
			return auto_bone_apply_request.verify(verifier)
		RpcMessage.AUTO_BONE_STOP_RECORDING_REQUEST:
			var auto_bone_stop_recording_request: AutoBoneStopRecordingRequest = value
			return auto_bone_stop_recording_request.verify(verifier)
		RpcMessage.AUTO_BONE_CANCEL_RECORDING_REQUEST:
			var auto_bone_cancel_recording_request: AutoBoneCancelRecordingRequest = value
			return auto_bone_cancel_recording_request.verify(verifier)
		RpcMessage.SAVE_FILE_NOTIFICATION:
			var save_file_notification: SaveFileNotification = value
			return save_file_notification.verify(verifier)
		RpcMessage.TRACKING_PAUSE_STATE_REQUEST:
			var tracking_pause_state_request: TrackingPauseStateRequest = value
			return tracking_pause_state_request.verify(verifier)
		RpcMessage.TRACKING_PAUSE_STATE_RESPONSE:
			var tracking_pause_state_response: TrackingPauseStateResponse = value
			return tracking_pause_state_response.verify(verifier)
		RpcMessage.SERIAL_TRACKER_GET_WIFI_SCAN_REQUEST:
			var serial_tracker_get_wifi_scan_request: SerialTrackerGetWifiScanRequest = value
			return serial_tracker_get_wifi_scan_request.verify(verifier)
		RpcMessage.UNKNOWN_DEVICE_HANDSHAKE_NOTIFICATION:
			var unknown_device_handshake_notification: UnknownDeviceHandshakeNotification = value
			return unknown_device_handshake_notification.verify(verifier)
		RpcMessage.ADD_UNKNOWN_DEVICE_REQUEST:
			var add_unknown_device_request: AddUnknownDeviceRequest = value
			return add_unknown_device_request.verify(verifier)
		RpcMessage.FORGET_DEVICE_REQUEST:
			var forget_device_request: ForgetDeviceRequest = value
			return forget_device_request.verify(verifier)
		RpcMessage.FIRMWARE_UPDATE_REQUEST:
			var firmware_update_request: FirmwareUpdateRequest = value
			return firmware_update_request.verify(verifier)
		RpcMessage.FIRMWARE_UPDATE_STATUS_RESPONSE:
			var firmware_update_status_response: FirmwareUpdateStatusResponse = value
			return firmware_update_status_response.verify(verifier)
		RpcMessage.FIRMWARE_UPDATE_STOP_QUEUES_REQUEST:
			var firmware_update_stop_queues_request: FirmwareUpdateStopQueuesRequest = value
			return firmware_update_stop_queues_request.verify(verifier)
		RpcMessage.SETTINGS_RESET_REQUEST:
			var settings_reset_request: SettingsResetRequest = value
			return settings_reset_request.verify(verifier)
		RpcMessage.MAG_TOGGLE_REQUEST:
			var mag_toggle_request: MagToggleRequest = value
			return mag_toggle_request.verify(verifier)
		RpcMessage.MAG_TOGGLE_RESPONSE:
			var mag_toggle_response: MagToggleResponse = value
			return mag_toggle_response.verify(verifier)
		RpcMessage.CHANGE_MAG_TOGGLE_REQUEST:
			var change_mag_toggle_request: ChangeMagToggleRequest = value
			return change_mag_toggle_request.verify(verifier)
		RpcMessage.RECORD_BVHSTATUS_REQUEST:
			var record_bvhstatus_request: RecordBVHStatusRequest = value
			return record_bvhstatus_request.verify(verifier)
		RpcMessage.VRCCONFIG_STATE_REQUEST:
			var vrcconfig_state_request: VRCConfigStateRequest = value
			return vrcconfig_state_request.verify(verifier)
		RpcMessage.VRCCONFIG_STATE_CHANGE_RESPONSE:
			var vrcconfig_state_change_response: VRCConfigStateChangeResponse = value
			return vrcconfig_state_change_response.verify(verifier)
		RpcMessage.ENABLE_STAY_ALIGNED_REQUEST:
			var enable_stay_aligned_request: EnableStayAlignedRequest = value
			return enable_stay_aligned_request.verify(verifier)
		RpcMessage.DETECT_STAY_ALIGNED_RELAXED_POSE_REQUEST:
			var detect_stay_aligned_relaxed_pose_request: DetectStayAlignedRelaxedPoseRequest = value
			return detect_stay_aligned_relaxed_pose_request.verify(verifier)
		RpcMessage.RESET_STAY_ALIGNED_RELAXED_POSE_REQUEST:
			var reset_stay_aligned_relaxed_pose_request: ResetStayAlignedRelaxedPoseRequest = value
			return reset_stay_aligned_relaxed_pose_request.verify(verifier)
		RpcMessage.SERIAL_TRACKER_CUSTOM_COMMAND_REQUEST:
			var serial_tracker_custom_command_request: SerialTrackerCustomCommandRequest = value
			return serial_tracker_custom_command_request.verify(verifier)
		RpcMessage.VRCCONFIG_SETTING_TOGGLE_MUTE:
			var vrcconfig_setting_toggle_mute: VRCConfigSettingToggleMute = value
			return vrcconfig_setting_toggle_mute.verify(verifier)
		RpcMessage.TRACKING_CHECKLIST_REQUEST:
			var tracking_checklist_request: TrackingChecklistRequest = value
			return tracking_checklist_request.verify(verifier)
		RpcMessage.TRACKING_CHECKLIST_RESPONSE:
			var tracking_checklist_response: TrackingChecklistResponse = value
			return tracking_checklist_response.verify(verifier)
		RpcMessage.IGNORE_TRACKING_CHECKLIST_STEP_REQUEST:
			var ignore_tracking_checklist_step_request: IgnoreTrackingChecklistStepRequest = value
			return ignore_tracking_checklist_step_request.verify(verifier)
		RpcMessage.START_USER_HEIGHT_CALIBRATION:
			var start_user_height_calibration: StartUserHeightCalibration = value
			return start_user_height_calibration.verify(verifier)
		RpcMessage.CANCEL_USER_HEIGHT_CALIBRATION:
			var cancel_user_height_calibration: CancelUserHeightCalibration = value
			return cancel_user_height_calibration.verify(verifier)
		RpcMessage.USER_HEIGHT_RECORDING_STATUS_RESPONSE:
			var user_height_recording_status_response: UserHeightRecordingStatusResponse = value
			return user_height_recording_status_response.verify(verifier)
		RpcMessage.KEYBIND_REQUEST:
			var keybind_request: KeybindRequest = value
			return keybind_request.verify(verifier)
		RpcMessage.CHANGE_KEYBIND_REQUEST:
			var change_keybind_request: ChangeKeybindRequest = value
			return change_keybind_request.verify(verifier)
		RpcMessage.KEYBIND_RESPONSE:
			var keybind_response: KeybindResponse = value
			return keybind_response.verify(verifier)
		RpcMessage.INSTALLED_INFO_REQUEST:
			var installed_info_request: InstalledInfoRequest = value
			return installed_info_request.verify(verifier)
		RpcMessage.INSTALLED_INFO_RESPONSE:
			var installed_info_response: InstalledInfoResponse = value
			return installed_info_response.verify(verifier)
		RpcMessage.OPEN_URI_REQUEST:
			var open_uri_request: OpenUriRequest = value
			return open_uri_request.verify(verifier)
		RpcMessage.OPEN_URI_RESPONSE:
			var open_uri_response: OpenUriResponse = value
			return open_uri_response.verify(verifier)
		RpcMessage.ENABLE_STEAM_VRDRIVER_REQUEST:
			var enable_steam_vrdriver_request: EnableSteamVRDriverRequest = value
			return enable_steam_vrdriver_request.verify(verifier)
	return false

enum KeybindId {
	FULL_RESET = 0,
	YAW_RESET = 1,
	MOUNTING_RESET = 2,
	PAUSE_TRACKING = 3,
	FEET_MOUNTING_RESET = 4
}

enum ResetType {
	YAW = 0,
	FULL = 1,
	MOUNTING = 2
}

enum ResetStatus {
	STARTED = 0,
	FINISHED = 1
}

enum ArmsMountingResetMode {
	BACK = 0,
	FORWARD = 1,
	TPOSE_UP = 2,
	TPOSE_DOWN = 3
}

enum SkeletonBone {
	NONE = 0,
	HEAD = 1,
	NECK = 2,
	CHEST = 3,
	CHEST_OFFSET = 4,
	WAIST = 5,
	HIP = 6,
	HIP_OFFSET = 7,
	HIPS_WIDTH = 8,
	UPPER_LEG = 9,
	LOWER_LEG = 10,
	FOOT_LENGTH = 11,
	FOOT_SHIFT = 12,
	SKELETON_OFFSET = 13,
	SHOULDERS_DISTANCE = 14,
	SHOULDERS_WIDTH = 15,
	UPPER_ARM = 16,
	LOWER_ARM = 17,
	HAND_Y = 18,
	HAND_Z = 19,
	ELBOW_OFFSET = 20,
	UPPER_CHEST = 21
}

enum SerialDeviceType {
	ESP_TRACKER = 0,
	HID_RECEIVER = 1,
	HID_TRACKER = 2
}

enum WifiProvisioningStatus {
	NONE = 0,
	SERIAL_INIT = 1,
	PROVISIONING = 2,
	CONNECTING = 3,
	CONNECTION_ERROR = 4,
	LOOKING_FOR_SERVER = 5,
	COULD_NOT_FIND_SERVER = 6,
	DONE = 7,
	OBTAINING_MAC_ADDRESS = 8,
	NO_SERIAL_LOGS_ERROR = 9,
	NO_SERIAL_DEVICE_FOUND = 10
}

enum AutoBoneProcessType {
	NONE = 0,
	RECORD = 1,
	SAVE = 2,
	PROCESS = 3,
	APPLY = 4
}

enum StatusData {
	NONE = 0,
	STATUS_TRACKER_RESET = 1,
	STATUS_TRACKER_ERROR = 2,
	STATUS_STEAM_VRDISCONNECTED = 3,
	STATUS_UNASSIGNED_HMD = 4,
	STATUS_PUBLIC_NETWORK = 5
}

## Verify the integrity of the StatusData union data
static func status_data_verify(verifier:FlatBufferVerifier, value:Variant, type:StatusData) -> bool: 
	match type:
		StatusData.STATUS_TRACKER_RESET:
			var status_tracker_reset: StatusTrackerReset = value
			return status_tracker_reset.verify(verifier)
		StatusData.STATUS_TRACKER_ERROR:
			var status_tracker_error: StatusTrackerError = value
			return status_tracker_error.verify(verifier)
		StatusData.STATUS_STEAM_VRDISCONNECTED:
			var status_steam_vrdisconnected: StatusSteamVRDisconnected = value
			return status_steam_vrdisconnected.verify(verifier)
		StatusData.STATUS_UNASSIGNED_HMD:
			var status_unassigned_hmd: StatusUnassignedHMD = value
			return status_unassigned_hmd.verify(verifier)
		StatusData.STATUS_PUBLIC_NETWORK:
			var status_public_network: StatusPublicNetwork = value
			return status_public_network.verify(verifier)
	return false

enum ComputerDirectory {
	DOCUMENTS = 0
}

enum FirmwareUpdateStatus {
	DOWNLOADING = 0,
	NEED_MANUAL_REBOOT = 1,
	AUTHENTICATING = 2,
	UPLOADING = 3,
	SYNCING_WITH_MCU = 4,
	REBOOTING = 5,
	PROVISIONING = 6,
	DONE = 7,
	ERROR_DEVICE_NOT_FOUND = 8,
	ERROR_TIMEOUT = 9,
	ERROR_DOWNLOAD_FAILED = 10,
	ERROR_AUTHENTICATION_FAILED = 11,
	ERROR_UPLOAD_FAILED = 12,
	ERROR_PROVISIONING_FAILED = 13,
	ERROR_UNSUPPORTED_METHOD = 14,
	ERROR_UNKNOWN = 15
}

enum FirmwareUpdateDeviceId {
	NONE = 0,
	DEVICE_ID_TABLE = 1,
	SERIAL_DEVICE_PORT = 2
}

## Verify the integrity of the FirmwareUpdateDeviceId union data
static func firmware_update_device_id_verify(verifier:FlatBufferVerifier, value:Variant, type:FirmwareUpdateDeviceId) -> bool: 
	match type:
		FirmwareUpdateDeviceId.DEVICE_ID_TABLE:
			var device_id_table: DeviceIdTable = value
			return device_id_table.verify(verifier)
		FirmwareUpdateDeviceId.SERIAL_DEVICE_PORT:
			var serial_device_port: SerialDevicePort = value
			return serial_device_port.verify(verifier)
	return false

enum FirmwareUpdateMethod {
	NONE = 0,
	OTAFIRMWARE_UPDATE = 1,
	SERIAL_FIRMWARE_UPDATE = 2
}

## Verify the integrity of the FirmwareUpdateMethod union data
static func firmware_update_method_verify(verifier:FlatBufferVerifier, value:Variant, type:FirmwareUpdateMethod) -> bool: 
	match type:
		FirmwareUpdateMethod.OTAFIRMWARE_UPDATE:
			var otafirmware_update: OTAFirmwareUpdate = value
			return otafirmware_update.verify(verifier)
		FirmwareUpdateMethod.SERIAL_FIRMWARE_UPDATE:
			var serial_firmware_update: SerialFirmwareUpdate = value
			return serial_firmware_update.verify(verifier)
	return false

enum VRCTrackerModel {
	UNKNOWN = 0,
	SPHERE = 1,
	SYSTEM = 2,
	BOX = 3,
	AXIS = 4
}

enum VRCSpineMode {
	UNKNOWN = 0,
	LOCK_HIP = 1,
	LOCK_HEAD = 2,
	LOCK_BOTH = 3
}

enum VRCAvatarMeasurementType {
	UNKNOWN = 0,
	HEIGHT = 1,
	ARM_SPAN = 2
}

enum TrackingChecklistStepId {
	UNKNOWN = 0,
	TRACKERS_REST_CALIBRATION = 1,
	FULL_RESET = 2,
	VRCHAT_SETTINGS = 3,
	STEAMVR_DISCONNECTED = 4,
	UNASSIGNED_HMD = 5,
	TRACKER_ERROR = 6,
	NETWORK_PROFILE_PUBLIC = 7,
	MOUNTING_CALIBRATION = 8,
	FEET_MOUNTING_CALIBRATION = 9,
	STAY_ALIGNED_CONFIGURED = 10,
	STEAMVR_HANDS_ENABLED = 11,
	STANDABLE_INSTALLED = 12
}

enum TrackingChecklistStepVisibility {
	ALWAYS = 0,
	WHEN_INVALID = 1
}

enum TrackingChecklistExtraData {
	NONE = 0,
	TRACKING_CHECKLIST_TRACKER_RESET = 1,
	TRACKING_CHECKLIST_TRACKER_ERROR = 2,
	TRACKING_CHECKLIST_STEAM_VRDISCONNECTED = 3,
	TRACKING_CHECKLIST_UNASSIGNED_HMD = 4,
	TRACKING_CHECKLIST_NEED_CALIBRATION = 5,
	TRACKING_CHECKLIST_PUBLIC_NETWORKS = 6
}

## Verify the integrity of the TrackingChecklistExtraData union data
static func tracking_checklist_extra_data_verify(verifier:FlatBufferVerifier, value:Variant, type:TrackingChecklistExtraData) -> bool: 
	match type:
		TrackingChecklistExtraData.TRACKING_CHECKLIST_TRACKER_RESET:
			var tracking_checklist_tracker_reset: TrackingChecklistTrackerReset = value
			return tracking_checklist_tracker_reset.verify(verifier)
		TrackingChecklistExtraData.TRACKING_CHECKLIST_TRACKER_ERROR:
			var tracking_checklist_tracker_error: TrackingChecklistTrackerError = value
			return tracking_checklist_tracker_error.verify(verifier)
		TrackingChecklistExtraData.TRACKING_CHECKLIST_STEAM_VRDISCONNECTED:
			var tracking_checklist_steam_vrdisconnected: TrackingChecklistSteamVRDisconnected = value
			return tracking_checklist_steam_vrdisconnected.verify(verifier)
		TrackingChecklistExtraData.TRACKING_CHECKLIST_UNASSIGNED_HMD:
			var tracking_checklist_unassigned_hmd: TrackingChecklistUnassignedHMD = value
			return tracking_checklist_unassigned_hmd.verify(verifier)
		TrackingChecklistExtraData.TRACKING_CHECKLIST_NEED_CALIBRATION:
			var tracking_checklist_need_calibration: TrackingChecklistNeedCalibration = value
			return tracking_checklist_need_calibration.verify(verifier)
		TrackingChecklistExtraData.TRACKING_CHECKLIST_PUBLIC_NETWORKS:
			var tracking_checklist_public_networks: TrackingChecklistPublicNetworks = value
			return tracking_checklist_public_networks.verify(verifier)
	return false

enum StayAlignedRelaxedPose {
	STANDING = 0,
	SITTING = 1,
	FLAT = 2
}

enum UserHeightCalibrationStatus {
	NONE = 0,
	RECORDING_FLOOR = 1,
	WAITING_FOR_CONTROLLER_PITCH = 2,
	WAITING_FOR_RISE = 3,
	WAITING_FOR_FW_LOOK = 4,
	RECORDING_HEIGHT = 5,
	DONE = 6,
	ERROR_TOO_HIGH = 7,
	ERROR_TOO_SMALL = 8,
	ERROR_TIMEOUT = 9
}

enum Topic {
	NONE = 0,
	TOPIC_HANDLE = 1,
	TOPIC_ID = 2
}

## Verify the integrity of the Topic union data
static func topic_verify(verifier:FlatBufferVerifier, value:Variant, type:Topic) -> bool: 
	match type:
		Topic.TOPIC_HANDLE:
			var topic_handle: TopicHandle = value
			return topic_handle.verify(verifier)
		Topic.TOPIC_ID:
			var topic_id: TopicId = value
			return topic_id.verify(verifier)
	return false

enum PubSubUnion {
	NONE = 0,
	MESSAGE = 1,
	SUBSCRIPTION_REQUEST = 2,
	TOPIC_HANDLE_REQUEST = 3,
	TOPIC_MAPPING = 4
}

## Verify the integrity of the PubSubUnion union data
static func pub_sub_union_verify(verifier:FlatBufferVerifier, value:Variant, type:PubSubUnion) -> bool: 
	match type:
		PubSubUnion.MESSAGE:
			var message: Message = value
			return message.verify(verifier)
		PubSubUnion.SUBSCRIPTION_REQUEST:
			var subscription_request: SubscriptionRequest = value
			return subscription_request.verify(verifier)
		PubSubUnion.TOPIC_HANDLE_REQUEST:
			var topic_handle_request: TopicHandleRequest = value
			return topic_handle_request.verify(verifier)
		PubSubUnion.TOPIC_MAPPING:
			var topic_mapping: TopicMapping = value
			return topic_mapping.verify(verifier)
	return false

enum Payload {
	NONE = 0,
	STRING_TABLE = 1,
	BYTES = 2,
	KEY_VALUES = 3
}

## Verify the integrity of the Payload union data
static func payload_verify(verifier:FlatBufferVerifier, value:Variant, type:Payload) -> bool: 
	match type:
		Payload.STRING_TABLE:
			var string_table: StringTable = value
			return string_table.verify(verifier)
		Payload.BYTES:
			var bytes: Bytes = value
			return bytes.verify(verifier)
		Payload.KEY_VALUES:
			var key_values: KeyValues = value
			return key_values.verify(verifier)
	return false

class HzF32 extends FlatBuffer:

	const _fb_struct_size: int = 4

	## Initialize the HzF32 with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		if packed_bytes.is_empty():
			packed_bytes = PackedByteArray()
			if packed_bytes.resize( _fb_struct_size ) != OK:
				printerr('unable to resize byte array')
		assert(offset + _fb_struct_size <= packed_bytes.size())
		assign_buffer( packed_bytes, offset )

	var f: float :
		get(): return _fb_bytes.decode_float(_fb_start + 0)
		set(v): _fb_bytes.encode_float(_fb_start + 0, v)


## Create a new HzF32 with the provided field values
static func create_HzF32(
		_f: float ) -> HzF32 :
	var val: HzF32 = HzF32.new()
	val.f = _f;
	return val

class TransactionId extends FlatBuffer:

	const _fb_struct_size: int = 4

	## Initialize the TransactionId with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		if packed_bytes.is_empty():
			packed_bytes = PackedByteArray()
			if packed_bytes.resize( _fb_struct_size ) != OK:
				printerr('unable to resize byte array')
		assert(offset + _fb_struct_size <= packed_bytes.size())
		assign_buffer( packed_bytes, offset )

	var id: int :
		get(): return _fb_bytes.decode_u32(_fb_start + 0)
		set(v): _fb_bytes.encode_u32(_fb_start + 0, v)


## Create a new TransactionId with the provided field values
static func create_TransactionId(
		_id: int ) -> TransactionId :
	var val: TransactionId = TransactionId.new()
	val.id = _id;
	return val

class DeviceId extends FlatBuffer:

	const _fb_struct_size: int = 1

	## Initialize the DeviceId with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		if packed_bytes.is_empty():
			packed_bytes = PackedByteArray()
			if packed_bytes.resize( _fb_struct_size ) != OK:
				printerr('unable to resize byte array')
		assert(offset + _fb_struct_size <= packed_bytes.size())
		assign_buffer( packed_bytes, offset )

	var id: int :
		get(): return _fb_bytes.decode_u8(_fb_start + 0)
		set(v): _fb_bytes.encode_u8(_fb_start + 0, v)


## Create a new DeviceId with the provided field values
static func create_DeviceId(
		_id: int ) -> DeviceId :
	var val: DeviceId = DeviceId.new()
	val.id = _id;
	return val

class Temperature extends FlatBuffer:

	const _fb_struct_size: int = 4

	## Initialize the Temperature with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		if packed_bytes.is_empty():
			packed_bytes = PackedByteArray()
			if packed_bytes.resize( _fb_struct_size ) != OK:
				printerr('unable to resize byte array')
		assert(offset + _fb_struct_size <= packed_bytes.size())
		assign_buffer( packed_bytes, offset )

	var temp: float :
		get(): return _fb_bytes.decode_float(_fb_start + 0)
		set(v): _fb_bytes.encode_float(_fb_start + 0, v)


## Create a new Temperature with the provided field values
static func create_Temperature(
		_temp: float ) -> Temperature :
	var val: Temperature = Temperature.new()
	val.temp = _temp;
	return val

class Ipv4Address extends FlatBuffer:

	const _fb_struct_size: int = 4

	## Initialize the Ipv4Address with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		if packed_bytes.is_empty():
			packed_bytes = PackedByteArray()
			if packed_bytes.resize( _fb_struct_size ) != OK:
				printerr('unable to resize byte array')
		assert(offset + _fb_struct_size <= packed_bytes.size())
		assign_buffer( packed_bytes, offset )

	var addr: int :
		get(): return _fb_bytes.decode_u32(_fb_start + 0)
		set(v): _fb_bytes.encode_u32(_fb_start + 0, v)


## Create a new Ipv4Address with the provided field values
static func create_Ipv4Address(
		_addr: int ) -> Ipv4Address :
	var val: Ipv4Address = Ipv4Address.new()
	val.addr = _addr;
	return val

class HardwareAddress extends FlatBuffer:

	const _fb_struct_size: int = 8

	## Initialize the HardwareAddress with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		if packed_bytes.is_empty():
			packed_bytes = PackedByteArray()
			if packed_bytes.resize( _fb_struct_size ) != OK:
				printerr('unable to resize byte array')
		assert(offset + _fb_struct_size <= packed_bytes.size())
		assign_buffer( packed_bytes, offset )

	var addr: int :
		get(): return _fb_bytes.decode_u64(_fb_start + 0)
		set(v): _fb_bytes.encode_u64(_fb_start + 0, v)


## Create a new HardwareAddress with the provided field values
static func create_HardwareAddress(
		_addr: int ) -> HardwareAddress :
	var val: HardwareAddress = HardwareAddress.new()
	val.addr = _addr;
	return val

class Quat extends FlatBuffer:

	const _fb_struct_size: int = 16

	## Initialize the Quat with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		if packed_bytes.is_empty():
			packed_bytes = PackedByteArray()
			if packed_bytes.resize( _fb_struct_size ) != OK:
				printerr('unable to resize byte array')
		assert(offset + _fb_struct_size <= packed_bytes.size())
		assign_buffer( packed_bytes, offset )

	var x: float :
		get(): return _fb_bytes.decode_float(_fb_start + 0)
		set(v): _fb_bytes.encode_float(_fb_start + 0, v)

	var y: float :
		get(): return _fb_bytes.decode_float(_fb_start + 4)
		set(v): _fb_bytes.encode_float(_fb_start + 4, v)

	var z: float :
		get(): return _fb_bytes.decode_float(_fb_start + 8)
		set(v): _fb_bytes.encode_float(_fb_start + 8, v)

	var w: float :
		get(): return _fb_bytes.decode_float(_fb_start + 12)
		set(v): _fb_bytes.encode_float(_fb_start + 12, v)


## Create a new Quat with the provided field values
static func create_Quat(
		_x: float,
		_y: float,
		_z: float,
		_w: float ) -> Quat :
	var val: Quat = Quat.new()
	val.w = _w;
	val.z = _z;
	val.y = _y;
	val.x = _x;
	return val

class Vec3f extends FlatBuffer:

	const _fb_struct_size: int = 12

	## Initialize the Vec3f with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		if packed_bytes.is_empty():
			packed_bytes = PackedByteArray()
			if packed_bytes.resize( _fb_struct_size ) != OK:
				printerr('unable to resize byte array')
		assert(offset + _fb_struct_size <= packed_bytes.size())
		assign_buffer( packed_bytes, offset )

	var x: float :
		get(): return _fb_bytes.decode_float(_fb_start + 0)
		set(v): _fb_bytes.encode_float(_fb_start + 0, v)

	var y: float :
		get(): return _fb_bytes.decode_float(_fb_start + 4)
		set(v): _fb_bytes.encode_float(_fb_start + 4, v)

	var z: float :
		get(): return _fb_bytes.decode_float(_fb_start + 8)
		set(v): _fb_bytes.encode_float(_fb_start + 8, v)


## Create a new Vec3f with the provided field values
static func create_Vec3f(
		_x: float,
		_y: float,
		_z: float ) -> Vec3f :
	var val: Vec3f = Vec3f.new()
	val.z = _z;
	val.y = _y;
	val.x = _x;
	return val

class DeviceIdTable extends FlatBuffer:

	enum {
		VT_ID = 4
	}

	## Initialize the Vec3f with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the Vec3f data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_ID, 1)
			and verify_end_table(verifier)
		)

	## Return true if id is present in the buffer, else false
	func id_is_present() -> bool:
		return get_field_offset( VT_ID )

	func id() -> DeviceId:
		var field_start: int = get_inline_field_start( VT_ID )
		if not field_start: return null
		return SolarXR.DeviceId.new( _fb_bytes, field_start )


## Builder class for DeviceIdTable
class DeviceIdTableBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the id field to the DeviceIdTable table
	func add_id( id: DeviceId ) -> void:
		fbb_.add_bytes( DeviceIdTable.VT_ID, id._fb_bytes ) 

	## Finish building the DeviceIdTable table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a DeviceIdTable table in one go using the provided [param _fbb]
static func create_DeviceIdTable( _fbb: FlatBufferBuilder,
		id: DeviceId ) -> int :
	var builder: DeviceIdTableBuilder = DeviceIdTableBuilder.new( _fbb );
	builder.add_id( id );
	return builder.finish();

class TrackerId extends FlatBuffer:

	enum {
		VT_DEVICE_ID = 4,
		VT_TRACKER_NUM = 6
	}

	## Initialize the DeviceIdTable with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the DeviceIdTable data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_DEVICE_ID, 1)
			and verify_field_u8(verifier, VT_TRACKER_NUM, 1)
			and verify_end_table(verifier)
		)

	## Return true if device_id is present in the buffer, else false
	func device_id_is_present() -> bool:
		return get_field_offset( VT_DEVICE_ID )

	func device_id() -> DeviceId:
		var field_start: int = get_inline_field_start( VT_DEVICE_ID )
		if not field_start: return null
		return SolarXR.DeviceId.new( _fb_bytes, field_start )

	## Return true if tracker_num is present in the buffer, else false
	func tracker_num_is_present() -> bool:
		return get_field_offset( VT_TRACKER_NUM )

	func tracker_num() -> int:
		var field_start: int = get_inline_field_start( VT_TRACKER_NUM )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for TrackerId
class TrackerIdBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the device_id field to the TrackerId table
	func add_device_id( device_id: DeviceId ) -> void:
		fbb_.add_bytes( TrackerId.VT_DEVICE_ID, device_id._fb_bytes ) 

	## Add the tracker_num field to the TrackerId table
	func add_tracker_num( tracker_num: int ) -> void:
		fbb_.add_element_ubyte_default( TrackerId.VT_TRACKER_NUM, tracker_num, 0 )

	## Finish building the TrackerId table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackerId table in one go using the provided [param _fbb]
static func create_TrackerId( _fbb: FlatBufferBuilder,
		device_id: DeviceId,
		tracker_num: int ) -> int :
	var builder: TrackerIdBuilder = TrackerIdBuilder.new( _fbb );
	builder.add_device_id( device_id );
	builder.add_tracker_num( tracker_num );
	return builder.finish();

class LogData extends FlatBuffer:

	enum {
		VT_MESSAGE = 4,
		VT_DATA = 6
	}

	## Initialize the TrackerId with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackerId data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_MESSAGE)
			and verify_string( verifier, VT_MESSAGE )
			and verify_offset(verifier, VT_DATA)
			and verify_vector_u8(verifier, VT_DATA)
			and verify_end_table(verifier)
		)

	## Return true if message is present in the buffer, else false
	func message_is_present() -> bool:
		return get_field_offset( VT_MESSAGE )

	func message() -> String:
		var field_start: int = get_offset_field_start( VT_MESSAGE )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if data is present in the buffer, else false
	func data_is_present() -> bool:
		return get_field_offset( VT_DATA )

	func data_size() -> int:
		var array_start: int = get_offset_field_start( VT_DATA )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	## Access elements of data by [param index]
	func data_at( index: int ) -> int:
		var array_start: int = get_offset_field_start( VT_DATA )
		assert(array_start, 'access to invalid vector of enum')
		array_start += 4
		return _fb_bytes[array_start + index]

	## Decode and return all elements of data as an [PackedByteArray]
	func data() -> PackedByteArray:
		var array_start: int = get_offset_field_start( VT_DATA )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		return _fb_bytes.slice( array_start, array_start + array_size )


## Builder class for LogData
class LogDataBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the message field to the LogData table
	func add_message( message_offset: int ) -> void:
		fbb_.add_offset( LogData.VT_MESSAGE, message_offset )

	## Add the data field to the LogData table
	func add_data( data_offset: int ) -> void:
		fbb_.add_offset( LogData.VT_DATA, data_offset )

	## Finish building the LogData table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a LogData table in one go using the provided [param _fbb]
static func create_LogData( _fbb: FlatBufferBuilder,
		message: int,
		data: int ) -> int :
	var builder: LogDataBuilder = LogDataBuilder.new( _fbb );
	builder.add_data( data );
	builder.add_message( message );
	return builder.finish();

class Bytes extends FlatBuffer:

	enum {
		VT_B = 4
	}

	## Initialize the LogData with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the LogData data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_B)
			and verify_vector_u8(verifier, VT_B)
			and verify_end_table(verifier)
		)

	## Return true if b is present in the buffer, else false
	func b_is_present() -> bool:
		return get_field_offset( VT_B )

	func b_size() -> int:
		var array_start: int = get_offset_field_start( VT_B )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	## Access elements of b by [param index]
	func b_at( index: int ) -> int:
		var array_start: int = get_offset_field_start( VT_B )
		assert(array_start, 'access to invalid vector of enum')
		array_start += 4
		return _fb_bytes[array_start + index]

	## Decode and return all elements of b as an [PackedByteArray]
	func b() -> PackedByteArray:
		var array_start: int = get_offset_field_start( VT_B )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		return _fb_bytes.slice( array_start, array_start + array_size )


## Builder class for Bytes
class BytesBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the b field to the Bytes table
	func add_b( b_offset: int ) -> void:
		fbb_.add_offset( Bytes.VT_B, b_offset )

	## Finish building the Bytes table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a Bytes table in one go using the provided [param _fbb]
static func create_Bytes( _fbb: FlatBufferBuilder,
		b: int ) -> int :
	var builder: BytesBuilder = BytesBuilder.new( _fbb );
	builder.add_b( b );
	return builder.finish();

class StringTable extends FlatBuffer:

	enum {
		VT_S = 4
	}

	## Initialize the Bytes with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the Bytes data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_S)
			and verify_string( verifier, VT_S )
			and verify_end_table(verifier)
		)

	## Return true if s is present in the buffer, else false
	func s_is_present() -> bool:
		return get_field_offset( VT_S )

	func s() -> String:
		var field_start: int = get_offset_field_start( VT_S )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for StringTable
class StringTableBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the s field to the StringTable table
	func add_s( s_offset: int ) -> void:
		fbb_.add_offset( StringTable.VT_S, s_offset )

	## Finish building the StringTable table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StringTable table in one go using the provided [param _fbb]
static func create_StringTable( _fbb: FlatBufferBuilder,
		s: int ) -> int :
	var builder: StringTableBuilder = StringTableBuilder.new( _fbb );
	builder.add_s( s );
	return builder.finish();

class HardwareInfo extends FlatBuffer:

	enum {
		VT_MCU_ID = 4,
		VT_DISPLAY_NAME = 6,
		VT_MODEL = 8,
		VT_MANUFACTURER = 10,
		VT_HARDWARE_REVISION = 12,
		VT_FIRMWARE_VERSION = 14,
		VT_HARDWARE_ADDRESS = 16,
		VT_IP_ADDRESS = 18,
		VT_BOARD_TYPE = 20,
		VT_OFFICIAL_BOARD_TYPE = 22,
		VT_HARDWARE_IDENTIFIER = 24,
		VT_NETWORK_PROTOCOL_VERSION = 26,
		VT_FIRMWARE_DATE = 28
	}

	## Initialize the StringTable with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StringTable data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u16(verifier, VT_MCU_ID, 2)
			and verify_offset(verifier, VT_DISPLAY_NAME)
			and verify_string( verifier, VT_DISPLAY_NAME )
			and verify_offset(verifier, VT_MODEL)
			and verify_string( verifier, VT_MODEL )
			and verify_offset(verifier, VT_MANUFACTURER)
			and verify_string( verifier, VT_MANUFACTURER )
			and verify_offset(verifier, VT_HARDWARE_REVISION)
			and verify_string( verifier, VT_HARDWARE_REVISION )
			and verify_offset(verifier, VT_FIRMWARE_VERSION)
			and verify_string( verifier, VT_FIRMWARE_VERSION )
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_HARDWARE_ADDRESS, 8)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_IP_ADDRESS, 4)
			and verify_offset(verifier, VT_BOARD_TYPE)
			and verify_string( verifier, VT_BOARD_TYPE )
			and verify_field_u16(verifier, VT_OFFICIAL_BOARD_TYPE, 2)
			and verify_offset(verifier, VT_HARDWARE_IDENTIFIER)
			and verify_string( verifier, VT_HARDWARE_IDENTIFIER )
			and verify_field_u16(verifier, VT_NETWORK_PROTOCOL_VERSION, 2)
			and verify_offset(verifier, VT_FIRMWARE_DATE)
			and verify_string( verifier, VT_FIRMWARE_DATE )
			and verify_end_table(verifier)
		)

	## Return true if mcu_id is present in the buffer, else false
	func mcu_id_is_present() -> bool:
		return get_field_offset( VT_MCU_ID )

	func mcu_id() -> McuType:
		var field_start: int = get_inline_field_start( VT_MCU_ID )
		if not field_start: return 0 as McuType
		var decoded: McuType = _fb_bytes.decode_u16( field_start )
		return decoded

	## Return true if display_name is present in the buffer, else false
	func display_name_is_present() -> bool:
		return get_field_offset( VT_DISPLAY_NAME )

	func display_name() -> String:
		var field_start: int = get_offset_field_start( VT_DISPLAY_NAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if model is present in the buffer, else false
	func model_is_present() -> bool:
		return get_field_offset( VT_MODEL )

	func model() -> String:
		var field_start: int = get_offset_field_start( VT_MODEL )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if manufacturer is present in the buffer, else false
	func manufacturer_is_present() -> bool:
		return get_field_offset( VT_MANUFACTURER )

	func manufacturer() -> String:
		var field_start: int = get_offset_field_start( VT_MANUFACTURER )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if hardware_revision is present in the buffer, else false
	func hardware_revision_is_present() -> bool:
		return get_field_offset( VT_HARDWARE_REVISION )

	func hardware_revision() -> String:
		var field_start: int = get_offset_field_start( VT_HARDWARE_REVISION )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if firmware_version is present in the buffer, else false
	func firmware_version_is_present() -> bool:
		return get_field_offset( VT_FIRMWARE_VERSION )

	func firmware_version() -> String:
		var field_start: int = get_offset_field_start( VT_FIRMWARE_VERSION )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if hardware_address is present in the buffer, else false
	func hardware_address_is_present() -> bool:
		return get_field_offset( VT_HARDWARE_ADDRESS )

	func hardware_address() -> HardwareAddress:
		var field_start: int = get_inline_field_start( VT_HARDWARE_ADDRESS )
		if not field_start: return null
		return SolarXR.HardwareAddress.new( _fb_bytes, field_start )

	## Return true if ip_address is present in the buffer, else false
	func ip_address_is_present() -> bool:
		return get_field_offset( VT_IP_ADDRESS )

	func ip_address() -> Ipv4Address:
		var field_start: int = get_inline_field_start( VT_IP_ADDRESS )
		if not field_start: return null
		return SolarXR.Ipv4Address.new( _fb_bytes, field_start )

	## Return true if board_type is present in the buffer, else false
	func board_type_is_present() -> bool:
		return get_field_offset( VT_BOARD_TYPE )

	func board_type() -> String:
		var field_start: int = get_offset_field_start( VT_BOARD_TYPE )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if official_board_type is present in the buffer, else false
	func official_board_type_is_present() -> bool:
		return get_field_offset( VT_OFFICIAL_BOARD_TYPE )

	func official_board_type() -> BoardType:
		var field_start: int = get_inline_field_start( VT_OFFICIAL_BOARD_TYPE )
		if not field_start: return 0 as BoardType
		var decoded: BoardType = _fb_bytes.decode_u16( field_start )
		return decoded

	## Return true if hardware_identifier is present in the buffer, else false
	func hardware_identifier_is_present() -> bool:
		return get_field_offset( VT_HARDWARE_IDENTIFIER )

	func hardware_identifier() -> String:
		var field_start: int = get_offset_field_start( VT_HARDWARE_IDENTIFIER )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if network_protocol_version is present in the buffer, else false
	func network_protocol_version_is_present() -> bool:
		return get_field_offset( VT_NETWORK_PROTOCOL_VERSION )

	func network_protocol_version() -> int:
		var field_start: int = get_inline_field_start( VT_NETWORK_PROTOCOL_VERSION )
		if not field_start: return 0
		return _fb_bytes.decode_u16( field_start )

	## Return true if firmware_date is present in the buffer, else false
	func firmware_date_is_present() -> bool:
		return get_field_offset( VT_FIRMWARE_DATE )

	func firmware_date() -> String:
		var field_start: int = get_offset_field_start( VT_FIRMWARE_DATE )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for HardwareInfo
class HardwareInfoBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the mcu_id field to the HardwareInfo table
	func add_mcu_id( mcu_id: McuType ) -> void:
		fbb_.add_element_ushort( HardwareInfo.VT_MCU_ID, mcu_id )

	## Add the display_name field to the HardwareInfo table
	func add_display_name( display_name_offset: int ) -> void:
		fbb_.add_offset( HardwareInfo.VT_DISPLAY_NAME, display_name_offset )

	## Add the model field to the HardwareInfo table
	func add_model( model_offset: int ) -> void:
		fbb_.add_offset( HardwareInfo.VT_MODEL, model_offset )

	## Add the manufacturer field to the HardwareInfo table
	func add_manufacturer( manufacturer_offset: int ) -> void:
		fbb_.add_offset( HardwareInfo.VT_MANUFACTURER, manufacturer_offset )

	## Add the hardware_revision field to the HardwareInfo table
	func add_hardware_revision( hardware_revision_offset: int ) -> void:
		fbb_.add_offset( HardwareInfo.VT_HARDWARE_REVISION, hardware_revision_offset )

	## Add the firmware_version field to the HardwareInfo table
	func add_firmware_version( firmware_version_offset: int ) -> void:
		fbb_.add_offset( HardwareInfo.VT_FIRMWARE_VERSION, firmware_version_offset )

	## Add the hardware_address field to the HardwareInfo table
	func add_hardware_address( hardware_address: HardwareAddress ) -> void:
		fbb_.add_bytes( HardwareInfo.VT_HARDWARE_ADDRESS, hardware_address._fb_bytes ) 

	## Add the ip_address field to the HardwareInfo table
	func add_ip_address( ip_address: Ipv4Address ) -> void:
		fbb_.add_bytes( HardwareInfo.VT_IP_ADDRESS, ip_address._fb_bytes ) 

	## Add the board_type field to the HardwareInfo table
	func add_board_type( board_type_offset: int ) -> void:
		fbb_.add_offset( HardwareInfo.VT_BOARD_TYPE, board_type_offset )

	## Add the official_board_type field to the HardwareInfo table
	func add_official_board_type( official_board_type: BoardType ) -> void:
		fbb_.add_element_ushort( HardwareInfo.VT_OFFICIAL_BOARD_TYPE, official_board_type )

	## Add the hardware_identifier field to the HardwareInfo table
	func add_hardware_identifier( hardware_identifier_offset: int ) -> void:
		fbb_.add_offset( HardwareInfo.VT_HARDWARE_IDENTIFIER, hardware_identifier_offset )

	## Add the network_protocol_version field to the HardwareInfo table
	func add_network_protocol_version( network_protocol_version: int ) -> void:
		fbb_.add_element_ushort_default( HardwareInfo.VT_NETWORK_PROTOCOL_VERSION, network_protocol_version, 0 )

	## Add the firmware_date field to the HardwareInfo table
	func add_firmware_date( firmware_date_offset: int ) -> void:
		fbb_.add_offset( HardwareInfo.VT_FIRMWARE_DATE, firmware_date_offset )

	## Finish building the HardwareInfo table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a HardwareInfo table in one go using the provided [param _fbb]
static func create_HardwareInfo( _fbb: FlatBufferBuilder,
		mcu_id: McuType,
		display_name: int,
		model: int,
		manufacturer: int,
		hardware_revision: int,
		firmware_version: int,
		hardware_address: HardwareAddress,
		ip_address: Ipv4Address,
		board_type: int,
		official_board_type: BoardType,
		hardware_identifier: int,
		network_protocol_version: int,
		firmware_date: int ) -> int :
	var builder: HardwareInfoBuilder = HardwareInfoBuilder.new( _fbb );
	builder.add_firmware_date( firmware_date );
	builder.add_hardware_identifier( hardware_identifier );
	builder.add_board_type( board_type );
	builder.add_ip_address( ip_address );
	builder.add_hardware_address( hardware_address );
	builder.add_firmware_version( firmware_version );
	builder.add_hardware_revision( hardware_revision );
	builder.add_manufacturer( manufacturer );
	builder.add_model( model );
	builder.add_display_name( display_name );
	builder.add_network_protocol_version( network_protocol_version );
	builder.add_official_board_type( official_board_type );
	builder.add_mcu_id( mcu_id );
	return builder.finish();

class HardwareStatus extends FlatBuffer:

	enum {
		VT_ERROR_STATUS = 4,
		VT_TPS = 6,
		VT_PING = 8,
		VT_RSSI = 10,
		VT_MCU_TEMP = 12,
		VT_BATTERY_VOLTAGE = 14,
		VT_BATTERY_PCT_ESTIMATE = 16,
		VT_LOG_DATA = 18,
		VT_PACKET_LOSS = 20,
		VT_PACKETS_LOST = 22,
		VT_PACKETS_RECEIVED = 24,
		VT_BATTERY_RUNTIME_ESTIMATE = 26
	}

	## Initialize the HardwareInfo with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the HardwareInfo data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_ERROR_STATUS, 1)
			and verify_field_u16(verifier, VT_PING, 2)
			and verify_field_s16(verifier, VT_RSSI, 2)
			and verify_field_float(verifier, VT_MCU_TEMP, 4)
			and verify_field_float(verifier, VT_BATTERY_VOLTAGE, 4)
			and verify_field_u8(verifier, VT_BATTERY_PCT_ESTIMATE, 1)
			and verify_offset(verifier, VT_LOG_DATA)
			and log_data().verify(verifier)
			and verify_field_float(verifier, VT_PACKET_LOSS, 4)
			and verify_field_s32(verifier, VT_PACKETS_LOST, 4)
			and verify_field_s32(verifier, VT_PACKETS_RECEIVED, 4)
			and verify_field_s64(verifier, VT_BATTERY_RUNTIME_ESTIMATE, 8)
			and verify_end_table(verifier)
		)

	## Return true if error_status is present in the buffer, else false
	func error_status_is_present() -> bool:
		return get_field_offset( VT_ERROR_STATUS )

	func error_status() -> FirmwareErrorCode:
		var field_start: int = get_inline_field_start( VT_ERROR_STATUS )
		if not field_start: return 0 as FirmwareErrorCode
		var decoded: FirmwareErrorCode = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if ping is present in the buffer, else false
	func ping_is_present() -> bool:
		return get_field_offset( VT_PING )

	func ping() -> int:
		var field_start: int = get_inline_field_start( VT_PING )
		if not field_start: return 0
		return _fb_bytes.decode_u16( field_start )

	## Return true if rssi is present in the buffer, else false
	func rssi_is_present() -> bool:
		return get_field_offset( VT_RSSI )

	func rssi() -> int:
		var field_start: int = get_inline_field_start( VT_RSSI )
		if not field_start: return 0
		return _fb_bytes.decode_s16( field_start )

	## Return true if mcu_temp is present in the buffer, else false
	func mcu_temp_is_present() -> bool:
		return get_field_offset( VT_MCU_TEMP )

	func mcu_temp() -> float:
		var field_start: int = get_inline_field_start( VT_MCU_TEMP )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if battery_voltage is present in the buffer, else false
	func battery_voltage_is_present() -> bool:
		return get_field_offset( VT_BATTERY_VOLTAGE )

	func battery_voltage() -> float:
		var field_start: int = get_inline_field_start( VT_BATTERY_VOLTAGE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if battery_pct_estimate is present in the buffer, else false
	func battery_pct_estimate_is_present() -> bool:
		return get_field_offset( VT_BATTERY_PCT_ESTIMATE )

	func battery_pct_estimate() -> int:
		var field_start: int = get_inline_field_start( VT_BATTERY_PCT_ESTIMATE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if log_data is present in the buffer, else false
	func log_data_is_present() -> bool:
		return get_field_offset( VT_LOG_DATA )

	func log_data() -> SolarXR.LogData:
		var field_start: int = get_offset_field_start( VT_LOG_DATA )
		if not field_start: return null
		return SolarXR.LogData.new( _fb_bytes, field_start )

	## Return true if packet_loss is present in the buffer, else false
	func packet_loss_is_present() -> bool:
		return get_field_offset( VT_PACKET_LOSS )

	func packet_loss() -> float:
		var field_start: int = get_inline_field_start( VT_PACKET_LOSS )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if packets_lost is present in the buffer, else false
	func packets_lost_is_present() -> bool:
		return get_field_offset( VT_PACKETS_LOST )

	func packets_lost() -> int:
		var field_start: int = get_inline_field_start( VT_PACKETS_LOST )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )

	## Return true if packets_received is present in the buffer, else false
	func packets_received_is_present() -> bool:
		return get_field_offset( VT_PACKETS_RECEIVED )

	func packets_received() -> int:
		var field_start: int = get_inline_field_start( VT_PACKETS_RECEIVED )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )

	## Return true if battery_runtime_estimate is present in the buffer, else false
	func battery_runtime_estimate_is_present() -> bool:
		return get_field_offset( VT_BATTERY_RUNTIME_ESTIMATE )

	func battery_runtime_estimate() -> int:
		var field_start: int = get_inline_field_start( VT_BATTERY_RUNTIME_ESTIMATE )
		if not field_start: return 0
		return _fb_bytes.decode_s64( field_start )


## Builder class for HardwareStatus
class HardwareStatusBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the error_status field to the HardwareStatus table
	func add_error_status( error_status: FirmwareErrorCode ) -> void:
		fbb_.add_element_ubyte( HardwareStatus.VT_ERROR_STATUS, error_status )

	## Add the ping field to the HardwareStatus table
	func add_ping( ping: int ) -> void:
		fbb_.add_element_ushort_default( HardwareStatus.VT_PING, ping, 0 )

	## Add the rssi field to the HardwareStatus table
	func add_rssi( rssi: int ) -> void:
		fbb_.add_element_short_default( HardwareStatus.VT_RSSI, rssi, 0 )

	## Add the mcu_temp field to the HardwareStatus table
	func add_mcu_temp( mcu_temp: float ) -> void:
		fbb_.add_element_float_default( HardwareStatus.VT_MCU_TEMP, mcu_temp, 0.0 )

	## Add the battery_voltage field to the HardwareStatus table
	func add_battery_voltage( battery_voltage: float ) -> void:
		fbb_.add_element_float_default( HardwareStatus.VT_BATTERY_VOLTAGE, battery_voltage, 0.0 )

	## Add the battery_pct_estimate field to the HardwareStatus table
	func add_battery_pct_estimate( battery_pct_estimate: int ) -> void:
		fbb_.add_element_ubyte_default( HardwareStatus.VT_BATTERY_PCT_ESTIMATE, battery_pct_estimate, 0 )

	## Add the log_data field to the HardwareStatus table
	func add_log_data( log_data_offset: int ) -> void:
		fbb_.add_offset( HardwareStatus.VT_LOG_DATA, log_data_offset )

	## Add the packet_loss field to the HardwareStatus table
	func add_packet_loss( packet_loss: float ) -> void:
		fbb_.add_element_float_default( HardwareStatus.VT_PACKET_LOSS, packet_loss, 0.0 )

	## Add the packets_lost field to the HardwareStatus table
	func add_packets_lost( packets_lost: int ) -> void:
		fbb_.add_element_int_default( HardwareStatus.VT_PACKETS_LOST, packets_lost, 0 )

	## Add the packets_received field to the HardwareStatus table
	func add_packets_received( packets_received: int ) -> void:
		fbb_.add_element_int_default( HardwareStatus.VT_PACKETS_RECEIVED, packets_received, 0 )

	## Add the battery_runtime_estimate field to the HardwareStatus table
	func add_battery_runtime_estimate( battery_runtime_estimate: int ) -> void:
		fbb_.add_element_long_default( HardwareStatus.VT_BATTERY_RUNTIME_ESTIMATE, battery_runtime_estimate, 0 )

	## Finish building the HardwareStatus table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a HardwareStatus table in one go using the provided [param _fbb]
static func create_HardwareStatus( _fbb: FlatBufferBuilder,
		error_status: FirmwareErrorCode,
		ping: int,
		rssi: int,
		mcu_temp: float,
		battery_voltage: float,
		battery_pct_estimate: int,
		log_data: int,
		packet_loss: float,
		packets_lost: int,
		packets_received: int,
		battery_runtime_estimate: int ) -> int :
	var builder: HardwareStatusBuilder = HardwareStatusBuilder.new( _fbb );
	builder.add_battery_runtime_estimate( battery_runtime_estimate );
	builder.add_packets_received( packets_received );
	builder.add_packets_lost( packets_lost );
	builder.add_packet_loss( packet_loss );
	builder.add_log_data( log_data );
	builder.add_battery_voltage( battery_voltage );
	builder.add_mcu_temp( mcu_temp );
	builder.add_rssi( rssi );
	builder.add_ping( ping );
	builder.add_battery_pct_estimate( battery_pct_estimate );
	builder.add_error_status( error_status );
	return builder.finish();

class FirmwareStatusMask extends FlatBuffer:

	enum {
		VT_ERROR_STATUS = 4,
		VT_TPS = 6,
		VT_PING = 8,
		VT_RSSI = 10,
		VT_MCU_TEMP = 12,
		VT_BATTERY_VOLTAGE = 14,
		VT_BATTERY_PCT_ESTIMATE = 16,
		VT_BATTERY_RUNTIME_ESTIMATE = 18
	}

	## Initialize the HardwareStatus with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the HardwareStatus data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_ERROR_STATUS, 1)
			and verify_field_u8(verifier, VT_TPS, 1)
			and verify_field_u8(verifier, VT_PING, 1)
			and verify_field_u8(verifier, VT_RSSI, 1)
			and verify_field_u8(verifier, VT_MCU_TEMP, 1)
			and verify_field_u8(verifier, VT_BATTERY_VOLTAGE, 1)
			and verify_field_u8(verifier, VT_BATTERY_PCT_ESTIMATE, 1)
			and verify_field_u8(verifier, VT_BATTERY_RUNTIME_ESTIMATE, 1)
			and verify_end_table(verifier)
		)

	## Return true if error_status is present in the buffer, else false
	func error_status_is_present() -> bool:
		return get_field_offset( VT_ERROR_STATUS )

	func error_status() -> bool:
		var field_start: int = get_inline_field_start( VT_ERROR_STATUS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if tps is present in the buffer, else false
	func tps_is_present() -> bool:
		return get_field_offset( VT_TPS )

	func tps() -> bool:
		var field_start: int = get_inline_field_start( VT_TPS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if ping is present in the buffer, else false
	func ping_is_present() -> bool:
		return get_field_offset( VT_PING )

	func ping() -> bool:
		var field_start: int = get_inline_field_start( VT_PING )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if rssi is present in the buffer, else false
	func rssi_is_present() -> bool:
		return get_field_offset( VT_RSSI )

	func rssi() -> bool:
		var field_start: int = get_inline_field_start( VT_RSSI )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if mcu_temp is present in the buffer, else false
	func mcu_temp_is_present() -> bool:
		return get_field_offset( VT_MCU_TEMP )

	func mcu_temp() -> bool:
		var field_start: int = get_inline_field_start( VT_MCU_TEMP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if battery_voltage is present in the buffer, else false
	func battery_voltage_is_present() -> bool:
		return get_field_offset( VT_BATTERY_VOLTAGE )

	func battery_voltage() -> bool:
		var field_start: int = get_inline_field_start( VT_BATTERY_VOLTAGE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if battery_pct_estimate is present in the buffer, else false
	func battery_pct_estimate_is_present() -> bool:
		return get_field_offset( VT_BATTERY_PCT_ESTIMATE )

	func battery_pct_estimate() -> bool:
		var field_start: int = get_inline_field_start( VT_BATTERY_PCT_ESTIMATE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if battery_runtime_estimate is present in the buffer, else false
	func battery_runtime_estimate_is_present() -> bool:
		return get_field_offset( VT_BATTERY_RUNTIME_ESTIMATE )

	func battery_runtime_estimate() -> bool:
		var field_start: int = get_inline_field_start( VT_BATTERY_RUNTIME_ESTIMATE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for FirmwareStatusMask
class FirmwareStatusMaskBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the error_status field to the FirmwareStatusMask table
	func add_error_status( error_status: bool ) -> void:
		fbb_.add_element_bool_default( FirmwareStatusMask.VT_ERROR_STATUS, error_status, 0 )

	## Add the tps field to the FirmwareStatusMask table
	func add_tps( tps: bool ) -> void:
		fbb_.add_element_bool_default( FirmwareStatusMask.VT_TPS, tps, 0 )

	## Add the ping field to the FirmwareStatusMask table
	func add_ping( ping: bool ) -> void:
		fbb_.add_element_bool_default( FirmwareStatusMask.VT_PING, ping, 0 )

	## Add the rssi field to the FirmwareStatusMask table
	func add_rssi( rssi: bool ) -> void:
		fbb_.add_element_bool_default( FirmwareStatusMask.VT_RSSI, rssi, 0 )

	## Add the mcu_temp field to the FirmwareStatusMask table
	func add_mcu_temp( mcu_temp: bool ) -> void:
		fbb_.add_element_bool_default( FirmwareStatusMask.VT_MCU_TEMP, mcu_temp, 0 )

	## Add the battery_voltage field to the FirmwareStatusMask table
	func add_battery_voltage( battery_voltage: bool ) -> void:
		fbb_.add_element_bool_default( FirmwareStatusMask.VT_BATTERY_VOLTAGE, battery_voltage, 0 )

	## Add the battery_pct_estimate field to the FirmwareStatusMask table
	func add_battery_pct_estimate( battery_pct_estimate: bool ) -> void:
		fbb_.add_element_bool_default( FirmwareStatusMask.VT_BATTERY_PCT_ESTIMATE, battery_pct_estimate, 0 )

	## Add the battery_runtime_estimate field to the FirmwareStatusMask table
	func add_battery_runtime_estimate( battery_runtime_estimate: bool ) -> void:
		fbb_.add_element_bool_default( FirmwareStatusMask.VT_BATTERY_RUNTIME_ESTIMATE, battery_runtime_estimate, 0 )

	## Finish building the FirmwareStatusMask table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a FirmwareStatusMask table in one go using the provided [param _fbb]
static func create_FirmwareStatusMask( _fbb: FlatBufferBuilder,
		error_status: bool,
		tps: bool,
		ping: bool,
		rssi: bool,
		mcu_temp: bool,
		battery_voltage: bool,
		battery_pct_estimate: bool,
		battery_runtime_estimate: bool ) -> int :
	var builder: FirmwareStatusMaskBuilder = FirmwareStatusMaskBuilder.new( _fbb );
	builder.add_battery_runtime_estimate( battery_runtime_estimate );
	builder.add_battery_pct_estimate( battery_pct_estimate );
	builder.add_battery_voltage( battery_voltage );
	builder.add_mcu_temp( mcu_temp );
	builder.add_rssi( rssi );
	builder.add_ping( ping );
	builder.add_tps( tps );
	builder.add_error_status( error_status );
	return builder.finish();

class StayAlignedPose extends FlatBuffer:

	enum {
		VT_UPPER_LEG_ANGLE_IN_DEG = 4,
		VT_LOWER_LEG_ANGLE_IN_DEG = 6,
		VT_FOOT_ANGLE_IN_DEG = 8
	}

	## Initialize the FirmwareStatusMask with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the FirmwareStatusMask data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_float(verifier, VT_UPPER_LEG_ANGLE_IN_DEG, 4)
			and verify_field_float(verifier, VT_LOWER_LEG_ANGLE_IN_DEG, 4)
			and verify_field_float(verifier, VT_FOOT_ANGLE_IN_DEG, 4)
			and verify_end_table(verifier)
		)

	## Return true if upper_leg_angle_in_deg is present in the buffer, else false
	func upper_leg_angle_in_deg_is_present() -> bool:
		return get_field_offset( VT_UPPER_LEG_ANGLE_IN_DEG )

	func upper_leg_angle_in_deg() -> float:
		var field_start: int = get_inline_field_start( VT_UPPER_LEG_ANGLE_IN_DEG )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if lower_leg_angle_in_deg is present in the buffer, else false
	func lower_leg_angle_in_deg_is_present() -> bool:
		return get_field_offset( VT_LOWER_LEG_ANGLE_IN_DEG )

	func lower_leg_angle_in_deg() -> float:
		var field_start: int = get_inline_field_start( VT_LOWER_LEG_ANGLE_IN_DEG )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if foot_angle_in_deg is present in the buffer, else false
	func foot_angle_in_deg_is_present() -> bool:
		return get_field_offset( VT_FOOT_ANGLE_IN_DEG )

	func foot_angle_in_deg() -> float:
		var field_start: int = get_inline_field_start( VT_FOOT_ANGLE_IN_DEG )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for StayAlignedPose
class StayAlignedPoseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the upper_leg_angle_in_deg field to the StayAlignedPose table
	func add_upper_leg_angle_in_deg( upper_leg_angle_in_deg: float ) -> void:
		fbb_.add_element_float_default( StayAlignedPose.VT_UPPER_LEG_ANGLE_IN_DEG, upper_leg_angle_in_deg, 0.0 )

	## Add the lower_leg_angle_in_deg field to the StayAlignedPose table
	func add_lower_leg_angle_in_deg( lower_leg_angle_in_deg: float ) -> void:
		fbb_.add_element_float_default( StayAlignedPose.VT_LOWER_LEG_ANGLE_IN_DEG, lower_leg_angle_in_deg, 0.0 )

	## Add the foot_angle_in_deg field to the StayAlignedPose table
	func add_foot_angle_in_deg( foot_angle_in_deg: float ) -> void:
		fbb_.add_element_float_default( StayAlignedPose.VT_FOOT_ANGLE_IN_DEG, foot_angle_in_deg, 0.0 )

	## Finish building the StayAlignedPose table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StayAlignedPose table in one go using the provided [param _fbb]
static func create_StayAlignedPose( _fbb: FlatBufferBuilder,
		upper_leg_angle_in_deg: float,
		lower_leg_angle_in_deg: float,
		foot_angle_in_deg: float ) -> int :
	var builder: StayAlignedPoseBuilder = StayAlignedPoseBuilder.new( _fbb );
	builder.add_foot_angle_in_deg( foot_angle_in_deg );
	builder.add_lower_leg_angle_in_deg( lower_leg_angle_in_deg );
	builder.add_upper_leg_angle_in_deg( upper_leg_angle_in_deg );
	return builder.finish();

class StayAlignedTracker extends FlatBuffer:

	enum {
		VT_YAW_CORRECTION_IN_DEG = 4,
		VT_LOCKED_ERROR_IN_DEG = 6,
		VT_CENTER_ERROR_IN_DEG = 8,
		VT_NEIGHBOR_ERROR_IN_DEG = 10,
		VT_LOCKED = 12
	}

	## Initialize the StayAlignedPose with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StayAlignedPose data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_float(verifier, VT_YAW_CORRECTION_IN_DEG, 4)
			and verify_field_float(verifier, VT_LOCKED_ERROR_IN_DEG, 4)
			and verify_field_float(verifier, VT_CENTER_ERROR_IN_DEG, 4)
			and verify_field_float(verifier, VT_NEIGHBOR_ERROR_IN_DEG, 4)
			and verify_field_u8(verifier, VT_LOCKED, 1)
			and verify_end_table(verifier)
		)

	## Return true if yaw_correction_in_deg is present in the buffer, else false
	func yaw_correction_in_deg_is_present() -> bool:
		return get_field_offset( VT_YAW_CORRECTION_IN_DEG )

	func yaw_correction_in_deg() -> float:
		var field_start: int = get_inline_field_start( VT_YAW_CORRECTION_IN_DEG )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if locked_error_in_deg is present in the buffer, else false
	func locked_error_in_deg_is_present() -> bool:
		return get_field_offset( VT_LOCKED_ERROR_IN_DEG )

	func locked_error_in_deg() -> float:
		var field_start: int = get_inline_field_start( VT_LOCKED_ERROR_IN_DEG )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if center_error_in_deg is present in the buffer, else false
	func center_error_in_deg_is_present() -> bool:
		return get_field_offset( VT_CENTER_ERROR_IN_DEG )

	func center_error_in_deg() -> float:
		var field_start: int = get_inline_field_start( VT_CENTER_ERROR_IN_DEG )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if neighbor_error_in_deg is present in the buffer, else false
	func neighbor_error_in_deg_is_present() -> bool:
		return get_field_offset( VT_NEIGHBOR_ERROR_IN_DEG )

	func neighbor_error_in_deg() -> float:
		var field_start: int = get_inline_field_start( VT_NEIGHBOR_ERROR_IN_DEG )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if locked is present in the buffer, else false
	func locked_is_present() -> bool:
		return get_field_offset( VT_LOCKED )

	func locked() -> bool:
		var field_start: int = get_inline_field_start( VT_LOCKED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for StayAlignedTracker
class StayAlignedTrackerBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the yaw_correction_in_deg field to the StayAlignedTracker table
	func add_yaw_correction_in_deg( yaw_correction_in_deg: float ) -> void:
		fbb_.add_element_float_default( StayAlignedTracker.VT_YAW_CORRECTION_IN_DEG, yaw_correction_in_deg, 0.0 )

	## Add the locked_error_in_deg field to the StayAlignedTracker table
	func add_locked_error_in_deg( locked_error_in_deg: float ) -> void:
		fbb_.add_element_float_default( StayAlignedTracker.VT_LOCKED_ERROR_IN_DEG, locked_error_in_deg, 0.0 )

	## Add the center_error_in_deg field to the StayAlignedTracker table
	func add_center_error_in_deg( center_error_in_deg: float ) -> void:
		fbb_.add_element_float_default( StayAlignedTracker.VT_CENTER_ERROR_IN_DEG, center_error_in_deg, 0.0 )

	## Add the neighbor_error_in_deg field to the StayAlignedTracker table
	func add_neighbor_error_in_deg( neighbor_error_in_deg: float ) -> void:
		fbb_.add_element_float_default( StayAlignedTracker.VT_NEIGHBOR_ERROR_IN_DEG, neighbor_error_in_deg, 0.0 )

	## Add the locked field to the StayAlignedTracker table
	func add_locked( locked: bool ) -> void:
		fbb_.add_element_bool_default( StayAlignedTracker.VT_LOCKED, locked, 0 )

	## Finish building the StayAlignedTracker table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StayAlignedTracker table in one go using the provided [param _fbb]
static func create_StayAlignedTracker( _fbb: FlatBufferBuilder,
		yaw_correction_in_deg: float,
		locked_error_in_deg: float,
		center_error_in_deg: float,
		neighbor_error_in_deg: float,
		locked: bool ) -> int :
	var builder: StayAlignedTrackerBuilder = StayAlignedTrackerBuilder.new( _fbb );
	builder.add_neighbor_error_in_deg( neighbor_error_in_deg );
	builder.add_center_error_in_deg( center_error_in_deg );
	builder.add_locked_error_in_deg( locked_error_in_deg );
	builder.add_yaw_correction_in_deg( yaw_correction_in_deg );
	builder.add_locked( locked );
	return builder.finish();

class TrackerData extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4,
		VT_INFO = 6,
		VT_STATUS = 8,
		VT_ROTATION = 10,
		VT_POSITION = 12,
		VT_RAW_ANGULAR_VELOCITY = 14,
		VT_RAW_ACCELERATION = 16,
		VT_TEMP = 18,
		VT_LINEAR_ACCELERATION = 20,
		VT_ROTATION_REFERENCE_ADJUSTED = 22,
		VT_ROTATION_IDENTITY_ADJUSTED = 24,
		VT_TPS = 26,
		VT_RAW_MAGNETIC_VECTOR = 28,
		VT_STAY_ALIGNED = 30
	}

	## Initialize the StayAlignedTracker with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StayAlignedTracker data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and tracker_id().verify(verifier)
			and verify_offset(verifier, VT_INFO)
			and info().verify(verifier)
			and verify_field_u8(verifier, VT_STATUS, 1)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_ROTATION, 4)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_POSITION, 4)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_RAW_ANGULAR_VELOCITY, 4)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_RAW_ACCELERATION, 4)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_TEMP, 4)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_LINEAR_ACCELERATION, 4)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_ROTATION_REFERENCE_ADJUSTED, 4)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_ROTATION_IDENTITY_ADJUSTED, 4)
			and verify_field_u16(verifier, VT_TPS, 2)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_RAW_MAGNETIC_VECTOR, 4)
			and verify_offset(verifier, VT_STAY_ALIGNED)
			and stay_aligned().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id() -> SolarXR.TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not field_start: return null
		return SolarXR.TrackerId.new( _fb_bytes, field_start )

	## Return true if info is present in the buffer, else false
	func info_is_present() -> bool:
		return get_field_offset( VT_INFO )

	func info() -> SolarXR.TrackerInfo:
		var field_start: int = get_offset_field_start( VT_INFO )
		if not field_start: return null
		return SolarXR.TrackerInfo.new( _fb_bytes, field_start )

	## Return true if status is present in the buffer, else false
	func status_is_present() -> bool:
		return get_field_offset( VT_STATUS )

	func status() -> TrackerStatus:
		var field_start: int = get_inline_field_start( VT_STATUS )
		if not field_start: return 0 as TrackerStatus
		var decoded: TrackerStatus = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if rotation is present in the buffer, else false
	func rotation_is_present() -> bool:
		return get_field_offset( VT_ROTATION )

	func rotation() -> Quat:
		var field_start: int = get_inline_field_start( VT_ROTATION )
		if not field_start: return null
		return SolarXR.Quat.new( _fb_bytes, field_start )

	## Return true if position is present in the buffer, else false
	func position_is_present() -> bool:
		return get_field_offset( VT_POSITION )

	func position() -> Vec3f:
		var field_start: int = get_inline_field_start( VT_POSITION )
		if not field_start: return null
		return SolarXR.Vec3f.new( _fb_bytes, field_start )

	## Return true if raw_angular_velocity is present in the buffer, else false
	func raw_angular_velocity_is_present() -> bool:
		return get_field_offset( VT_RAW_ANGULAR_VELOCITY )

	func raw_angular_velocity() -> Vec3f:
		var field_start: int = get_inline_field_start( VT_RAW_ANGULAR_VELOCITY )
		if not field_start: return null
		return SolarXR.Vec3f.new( _fb_bytes, field_start )

	## Return true if raw_acceleration is present in the buffer, else false
	func raw_acceleration_is_present() -> bool:
		return get_field_offset( VT_RAW_ACCELERATION )

	func raw_acceleration() -> Vec3f:
		var field_start: int = get_inline_field_start( VT_RAW_ACCELERATION )
		if not field_start: return null
		return SolarXR.Vec3f.new( _fb_bytes, field_start )

	## Return true if temp is present in the buffer, else false
	func temp_is_present() -> bool:
		return get_field_offset( VT_TEMP )

	func temp() -> Temperature:
		var field_start: int = get_inline_field_start( VT_TEMP )
		if not field_start: return null
		return SolarXR.Temperature.new( _fb_bytes, field_start )

	## Return true if linear_acceleration is present in the buffer, else false
	func linear_acceleration_is_present() -> bool:
		return get_field_offset( VT_LINEAR_ACCELERATION )

	func linear_acceleration() -> Vec3f:
		var field_start: int = get_inline_field_start( VT_LINEAR_ACCELERATION )
		if not field_start: return null
		return SolarXR.Vec3f.new( _fb_bytes, field_start )

	## Return true if rotation_reference_adjusted is present in the buffer, else false
	func rotation_reference_adjusted_is_present() -> bool:
		return get_field_offset( VT_ROTATION_REFERENCE_ADJUSTED )

	func rotation_reference_adjusted() -> Quat:
		var field_start: int = get_inline_field_start( VT_ROTATION_REFERENCE_ADJUSTED )
		if not field_start: return null
		return SolarXR.Quat.new( _fb_bytes, field_start )

	## Return true if rotation_identity_adjusted is present in the buffer, else false
	func rotation_identity_adjusted_is_present() -> bool:
		return get_field_offset( VT_ROTATION_IDENTITY_ADJUSTED )

	func rotation_identity_adjusted() -> Quat:
		var field_start: int = get_inline_field_start( VT_ROTATION_IDENTITY_ADJUSTED )
		if not field_start: return null
		return SolarXR.Quat.new( _fb_bytes, field_start )

	## Return true if tps is present in the buffer, else false
	func tps_is_present() -> bool:
		return get_field_offset( VT_TPS )

	func tps() -> int:
		var field_start: int = get_inline_field_start( VT_TPS )
		if not field_start: return 0
		return _fb_bytes.decode_u16( field_start )

	## Return true if raw_magnetic_vector is present in the buffer, else false
	func raw_magnetic_vector_is_present() -> bool:
		return get_field_offset( VT_RAW_MAGNETIC_VECTOR )

	func raw_magnetic_vector() -> Vec3f:
		var field_start: int = get_inline_field_start( VT_RAW_MAGNETIC_VECTOR )
		if not field_start: return null
		return SolarXR.Vec3f.new( _fb_bytes, field_start )

	## Return true if stay_aligned is present in the buffer, else false
	func stay_aligned_is_present() -> bool:
		return get_field_offset( VT_STAY_ALIGNED )

	func stay_aligned() -> SolarXR.StayAlignedTracker:
		var field_start: int = get_offset_field_start( VT_STAY_ALIGNED )
		if not field_start: return null
		return SolarXR.StayAlignedTracker.new( _fb_bytes, field_start )


## Builder class for TrackerData
class TrackerDataBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the TrackerData table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( TrackerData.VT_TRACKER_ID, tracker_id_offset )

	## Add the info field to the TrackerData table
	func add_info( info_offset: int ) -> void:
		fbb_.add_offset( TrackerData.VT_INFO, info_offset )

	## Add the status field to the TrackerData table
	func add_status( status: TrackerStatus ) -> void:
		fbb_.add_element_ubyte( TrackerData.VT_STATUS, status )

	## Add the rotation field to the TrackerData table
	func add_rotation( rotation: Quat ) -> void:
		fbb_.add_bytes( TrackerData.VT_ROTATION, rotation._fb_bytes ) 

	## Add the position field to the TrackerData table
	func add_position( position: Vec3f ) -> void:
		fbb_.add_bytes( TrackerData.VT_POSITION, position._fb_bytes ) 

	## Add the raw_angular_velocity field to the TrackerData table
	func add_raw_angular_velocity( raw_angular_velocity: Vec3f ) -> void:
		fbb_.add_bytes( TrackerData.VT_RAW_ANGULAR_VELOCITY, raw_angular_velocity._fb_bytes ) 

	## Add the raw_acceleration field to the TrackerData table
	func add_raw_acceleration( raw_acceleration: Vec3f ) -> void:
		fbb_.add_bytes( TrackerData.VT_RAW_ACCELERATION, raw_acceleration._fb_bytes ) 

	## Add the temp field to the TrackerData table
	func add_temp( temp: Temperature ) -> void:
		fbb_.add_bytes( TrackerData.VT_TEMP, temp._fb_bytes ) 

	## Add the linear_acceleration field to the TrackerData table
	func add_linear_acceleration( linear_acceleration: Vec3f ) -> void:
		fbb_.add_bytes( TrackerData.VT_LINEAR_ACCELERATION, linear_acceleration._fb_bytes ) 

	## Add the rotation_reference_adjusted field to the TrackerData table
	func add_rotation_reference_adjusted( rotation_reference_adjusted: Quat ) -> void:
		fbb_.add_bytes( TrackerData.VT_ROTATION_REFERENCE_ADJUSTED, rotation_reference_adjusted._fb_bytes ) 

	## Add the rotation_identity_adjusted field to the TrackerData table
	func add_rotation_identity_adjusted( rotation_identity_adjusted: Quat ) -> void:
		fbb_.add_bytes( TrackerData.VT_ROTATION_IDENTITY_ADJUSTED, rotation_identity_adjusted._fb_bytes ) 

	## Add the tps field to the TrackerData table
	func add_tps( tps: int ) -> void:
		fbb_.add_element_ushort_default( TrackerData.VT_TPS, tps, 0 )

	## Add the raw_magnetic_vector field to the TrackerData table
	func add_raw_magnetic_vector( raw_magnetic_vector: Vec3f ) -> void:
		fbb_.add_bytes( TrackerData.VT_RAW_MAGNETIC_VECTOR, raw_magnetic_vector._fb_bytes ) 

	## Add the stay_aligned field to the TrackerData table
	func add_stay_aligned( stay_aligned_offset: int ) -> void:
		fbb_.add_offset( TrackerData.VT_STAY_ALIGNED, stay_aligned_offset )

	## Finish building the TrackerData table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackerData table in one go using the provided [param _fbb]
static func create_TrackerData( _fbb: FlatBufferBuilder,
		tracker_id: int,
		info: int,
		status: TrackerStatus,
		rotation: Quat,
		position: Vec3f,
		raw_angular_velocity: Vec3f,
		raw_acceleration: Vec3f,
		temp: Temperature,
		linear_acceleration: Vec3f,
		rotation_reference_adjusted: Quat,
		rotation_identity_adjusted: Quat,
		tps: int,
		raw_magnetic_vector: Vec3f,
		stay_aligned: int ) -> int :
	var builder: TrackerDataBuilder = TrackerDataBuilder.new( _fbb );
	builder.add_stay_aligned( stay_aligned );
	builder.add_raw_magnetic_vector( raw_magnetic_vector );
	builder.add_rotation_identity_adjusted( rotation_identity_adjusted );
	builder.add_rotation_reference_adjusted( rotation_reference_adjusted );
	builder.add_linear_acceleration( linear_acceleration );
	builder.add_temp( temp );
	builder.add_raw_acceleration( raw_acceleration );
	builder.add_raw_angular_velocity( raw_angular_velocity );
	builder.add_position( position );
	builder.add_rotation( rotation );
	builder.add_info( info );
	builder.add_tracker_id( tracker_id );
	builder.add_tps( tps );
	builder.add_status( status );
	return builder.finish();

class TrackerDataMask extends FlatBuffer:

	enum {
		VT_INFO = 4,
		VT_STATUS = 6,
		VT_ROTATION = 8,
		VT_POSITION = 10,
		VT_RAW_ANGULAR_VELOCITY = 12,
		VT_RAW_ACCELERATION = 14,
		VT_TEMP = 16,
		VT_LINEAR_ACCELERATION = 18,
		VT_ROTATION_REFERENCE_ADJUSTED = 20,
		VT_ROTATION_IDENTITY_ADJUSTED = 22,
		VT_TPS = 24,
		VT_RAW_MAGNETIC_VECTOR = 26,
		VT_STAY_ALIGNED = 28
	}

	## Initialize the TrackerData with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackerData data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_INFO, 1)
			and verify_field_u8(verifier, VT_STATUS, 1)
			and verify_field_u8(verifier, VT_ROTATION, 1)
			and verify_field_u8(verifier, VT_POSITION, 1)
			and verify_field_u8(verifier, VT_RAW_ANGULAR_VELOCITY, 1)
			and verify_field_u8(verifier, VT_RAW_ACCELERATION, 1)
			and verify_field_u8(verifier, VT_TEMP, 1)
			and verify_field_u8(verifier, VT_LINEAR_ACCELERATION, 1)
			and verify_field_u8(verifier, VT_ROTATION_REFERENCE_ADJUSTED, 1)
			and verify_field_u8(verifier, VT_ROTATION_IDENTITY_ADJUSTED, 1)
			and verify_field_u8(verifier, VT_TPS, 1)
			and verify_field_u8(verifier, VT_RAW_MAGNETIC_VECTOR, 1)
			and verify_field_u8(verifier, VT_STAY_ALIGNED, 1)
			and verify_end_table(verifier)
		)

	## Return true if info is present in the buffer, else false
	func info_is_present() -> bool:
		return get_field_offset( VT_INFO )

	func info() -> bool:
		var field_start: int = get_inline_field_start( VT_INFO )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if status is present in the buffer, else false
	func status_is_present() -> bool:
		return get_field_offset( VT_STATUS )

	func status() -> bool:
		var field_start: int = get_inline_field_start( VT_STATUS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if rotation is present in the buffer, else false
	func rotation_is_present() -> bool:
		return get_field_offset( VT_ROTATION )

	func rotation() -> bool:
		var field_start: int = get_inline_field_start( VT_ROTATION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if position is present in the buffer, else false
	func position_is_present() -> bool:
		return get_field_offset( VT_POSITION )

	func position() -> bool:
		var field_start: int = get_inline_field_start( VT_POSITION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if raw_angular_velocity is present in the buffer, else false
	func raw_angular_velocity_is_present() -> bool:
		return get_field_offset( VT_RAW_ANGULAR_VELOCITY )

	func raw_angular_velocity() -> bool:
		var field_start: int = get_inline_field_start( VT_RAW_ANGULAR_VELOCITY )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if raw_acceleration is present in the buffer, else false
	func raw_acceleration_is_present() -> bool:
		return get_field_offset( VT_RAW_ACCELERATION )

	func raw_acceleration() -> bool:
		var field_start: int = get_inline_field_start( VT_RAW_ACCELERATION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if temp is present in the buffer, else false
	func temp_is_present() -> bool:
		return get_field_offset( VT_TEMP )

	func temp() -> bool:
		var field_start: int = get_inline_field_start( VT_TEMP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if linear_acceleration is present in the buffer, else false
	func linear_acceleration_is_present() -> bool:
		return get_field_offset( VT_LINEAR_ACCELERATION )

	func linear_acceleration() -> bool:
		var field_start: int = get_inline_field_start( VT_LINEAR_ACCELERATION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if rotation_reference_adjusted is present in the buffer, else false
	func rotation_reference_adjusted_is_present() -> bool:
		return get_field_offset( VT_ROTATION_REFERENCE_ADJUSTED )

	func rotation_reference_adjusted() -> bool:
		var field_start: int = get_inline_field_start( VT_ROTATION_REFERENCE_ADJUSTED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if rotation_identity_adjusted is present in the buffer, else false
	func rotation_identity_adjusted_is_present() -> bool:
		return get_field_offset( VT_ROTATION_IDENTITY_ADJUSTED )

	func rotation_identity_adjusted() -> bool:
		var field_start: int = get_inline_field_start( VT_ROTATION_IDENTITY_ADJUSTED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if tps is present in the buffer, else false
	func tps_is_present() -> bool:
		return get_field_offset( VT_TPS )

	func tps() -> bool:
		var field_start: int = get_inline_field_start( VT_TPS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if raw_magnetic_vector is present in the buffer, else false
	func raw_magnetic_vector_is_present() -> bool:
		return get_field_offset( VT_RAW_MAGNETIC_VECTOR )

	func raw_magnetic_vector() -> bool:
		var field_start: int = get_inline_field_start( VT_RAW_MAGNETIC_VECTOR )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if stay_aligned is present in the buffer, else false
	func stay_aligned_is_present() -> bool:
		return get_field_offset( VT_STAY_ALIGNED )

	func stay_aligned() -> bool:
		var field_start: int = get_inline_field_start( VT_STAY_ALIGNED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for TrackerDataMask
class TrackerDataMaskBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the info field to the TrackerDataMask table
	func add_info( info: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_INFO, info, 0 )

	## Add the status field to the TrackerDataMask table
	func add_status( status: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_STATUS, status, 0 )

	## Add the rotation field to the TrackerDataMask table
	func add_rotation( rotation: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_ROTATION, rotation, 0 )

	## Add the position field to the TrackerDataMask table
	func add_position( position: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_POSITION, position, 0 )

	## Add the raw_angular_velocity field to the TrackerDataMask table
	func add_raw_angular_velocity( raw_angular_velocity: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_RAW_ANGULAR_VELOCITY, raw_angular_velocity, 0 )

	## Add the raw_acceleration field to the TrackerDataMask table
	func add_raw_acceleration( raw_acceleration: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_RAW_ACCELERATION, raw_acceleration, 0 )

	## Add the temp field to the TrackerDataMask table
	func add_temp( temp: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_TEMP, temp, 0 )

	## Add the linear_acceleration field to the TrackerDataMask table
	func add_linear_acceleration( linear_acceleration: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_LINEAR_ACCELERATION, linear_acceleration, 0 )

	## Add the rotation_reference_adjusted field to the TrackerDataMask table
	func add_rotation_reference_adjusted( rotation_reference_adjusted: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_ROTATION_REFERENCE_ADJUSTED, rotation_reference_adjusted, 0 )

	## Add the rotation_identity_adjusted field to the TrackerDataMask table
	func add_rotation_identity_adjusted( rotation_identity_adjusted: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_ROTATION_IDENTITY_ADJUSTED, rotation_identity_adjusted, 0 )

	## Add the tps field to the TrackerDataMask table
	func add_tps( tps: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_TPS, tps, 0 )

	## Add the raw_magnetic_vector field to the TrackerDataMask table
	func add_raw_magnetic_vector( raw_magnetic_vector: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_RAW_MAGNETIC_VECTOR, raw_magnetic_vector, 0 )

	## Add the stay_aligned field to the TrackerDataMask table
	func add_stay_aligned( stay_aligned: bool ) -> void:
		fbb_.add_element_bool_default( TrackerDataMask.VT_STAY_ALIGNED, stay_aligned, 0 )

	## Finish building the TrackerDataMask table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackerDataMask table in one go using the provided [param _fbb]
static func create_TrackerDataMask( _fbb: FlatBufferBuilder,
		info: bool,
		status: bool,
		rotation: bool,
		position: bool,
		raw_angular_velocity: bool,
		raw_acceleration: bool,
		temp: bool,
		linear_acceleration: bool,
		rotation_reference_adjusted: bool,
		rotation_identity_adjusted: bool,
		tps: bool,
		raw_magnetic_vector: bool,
		stay_aligned: bool ) -> int :
	var builder: TrackerDataMaskBuilder = TrackerDataMaskBuilder.new( _fbb );
	builder.add_stay_aligned( stay_aligned );
	builder.add_raw_magnetic_vector( raw_magnetic_vector );
	builder.add_tps( tps );
	builder.add_rotation_identity_adjusted( rotation_identity_adjusted );
	builder.add_rotation_reference_adjusted( rotation_reference_adjusted );
	builder.add_linear_acceleration( linear_acceleration );
	builder.add_temp( temp );
	builder.add_raw_acceleration( raw_acceleration );
	builder.add_raw_angular_velocity( raw_angular_velocity );
	builder.add_position( position );
	builder.add_rotation( rotation );
	builder.add_status( status );
	builder.add_info( info );
	return builder.finish();

class TrackerInfo extends FlatBuffer:

	enum {
		VT_IMU_TYPE = 4,
		VT_BODY_PART = 6,
		VT_POLL_RATE = 8,
		VT_MOUNTING_ORIENTATION = 10,
		VT_EDITABLE = 12,
		VT_IS_COMPUTED = 14,
		VT_IS_IMU = 16,
		VT_DISPLAY_NAME = 18,
		VT_CUSTOM_NAME = 20,
		VT_ALLOW_DRIFT_COMPENSATION = 22,
		VT_MOUNTING_RESET_ORIENTATION = 24,
		VT_IS_HMD = 26,
		VT_MAGNETOMETER = 28,
		VT_DATA_SUPPORT = 30
	}

	## Initialize the TrackerDataMask with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackerDataMask data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u16(verifier, VT_IMU_TYPE, 2)
			and verify_field_u8(verifier, VT_BODY_PART, 1)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_POLL_RATE, 4)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_MOUNTING_ORIENTATION, 4)
			and verify_field_u8(verifier, VT_EDITABLE, 1)
			and verify_field_u8(verifier, VT_IS_COMPUTED, 1)
			and verify_field_u8(verifier, VT_IS_IMU, 1)
			and verify_offset(verifier, VT_DISPLAY_NAME)
			and verify_string( verifier, VT_DISPLAY_NAME )
			and verify_offset(verifier, VT_CUSTOM_NAME)
			and verify_string( verifier, VT_CUSTOM_NAME )
			and verify_field_u8(verifier, VT_ALLOW_DRIFT_COMPENSATION, 1)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_MOUNTING_RESET_ORIENTATION, 4)
			and verify_field_u8(verifier, VT_IS_HMD, 1)
			and verify_field_u8(verifier, VT_MAGNETOMETER, 1)
			and verify_field_u8(verifier, VT_DATA_SUPPORT, 1)
			and verify_end_table(verifier)
		)

	## Return true if imu_type is present in the buffer, else false
	func imu_type_is_present() -> bool:
		return get_field_offset( VT_IMU_TYPE )

	func imu_type() -> ImuType:
		var field_start: int = get_inline_field_start( VT_IMU_TYPE )
		if not field_start: return 0 as ImuType
		var decoded: ImuType = _fb_bytes.decode_u16( field_start )
		return decoded

	## Return true if body_part is present in the buffer, else false
	func body_part_is_present() -> bool:
		return get_field_offset( VT_BODY_PART )

	func body_part() -> BodyPart:
		var field_start: int = get_inline_field_start( VT_BODY_PART )
		if not field_start: return 0 as BodyPart
		var decoded: BodyPart = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if poll_rate is present in the buffer, else false
	func poll_rate_is_present() -> bool:
		return get_field_offset( VT_POLL_RATE )

	func poll_rate() -> HzF32:
		var field_start: int = get_inline_field_start( VT_POLL_RATE )
		if not field_start: return null
		return SolarXR.HzF32.new( _fb_bytes, field_start )

	## Return true if mounting_orientation is present in the buffer, else false
	func mounting_orientation_is_present() -> bool:
		return get_field_offset( VT_MOUNTING_ORIENTATION )

	func mounting_orientation() -> Quat:
		var field_start: int = get_inline_field_start( VT_MOUNTING_ORIENTATION )
		if not field_start: return null
		return SolarXR.Quat.new( _fb_bytes, field_start )

	## Return true if editable is present in the buffer, else false
	func editable_is_present() -> bool:
		return get_field_offset( VT_EDITABLE )

	func editable() -> bool:
		var field_start: int = get_inline_field_start( VT_EDITABLE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if is_computed is present in the buffer, else false
	func is_computed_is_present() -> bool:
		return get_field_offset( VT_IS_COMPUTED )

	func is_computed() -> bool:
		var field_start: int = get_inline_field_start( VT_IS_COMPUTED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if is_imu is present in the buffer, else false
	func is_imu_is_present() -> bool:
		return get_field_offset( VT_IS_IMU )

	func is_imu() -> bool:
		var field_start: int = get_inline_field_start( VT_IS_IMU )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if display_name is present in the buffer, else false
	func display_name_is_present() -> bool:
		return get_field_offset( VT_DISPLAY_NAME )

	func display_name() -> String:
		var field_start: int = get_offset_field_start( VT_DISPLAY_NAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if custom_name is present in the buffer, else false
	func custom_name_is_present() -> bool:
		return get_field_offset( VT_CUSTOM_NAME )

	func custom_name() -> String:
		var field_start: int = get_offset_field_start( VT_CUSTOM_NAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if allow_drift_compensation is present in the buffer, else false
	func allow_drift_compensation_is_present() -> bool:
		return get_field_offset( VT_ALLOW_DRIFT_COMPENSATION )

	func allow_drift_compensation() -> bool:
		var field_start: int = get_inline_field_start( VT_ALLOW_DRIFT_COMPENSATION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if mounting_reset_orientation is present in the buffer, else false
	func mounting_reset_orientation_is_present() -> bool:
		return get_field_offset( VT_MOUNTING_RESET_ORIENTATION )

	func mounting_reset_orientation() -> Quat:
		var field_start: int = get_inline_field_start( VT_MOUNTING_RESET_ORIENTATION )
		if not field_start: return null
		return SolarXR.Quat.new( _fb_bytes, field_start )

	## Return true if is_hmd is present in the buffer, else false
	func is_hmd_is_present() -> bool:
		return get_field_offset( VT_IS_HMD )

	func is_hmd() -> bool:
		var field_start: int = get_inline_field_start( VT_IS_HMD )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if magnetometer is present in the buffer, else false
	func magnetometer_is_present() -> bool:
		return get_field_offset( VT_MAGNETOMETER )

	func magnetometer() -> MagnetometerStatus:
		var field_start: int = get_inline_field_start( VT_MAGNETOMETER )
		if not field_start: return 0 as MagnetometerStatus
		var decoded: MagnetometerStatus = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if data_support is present in the buffer, else false
	func data_support_is_present() -> bool:
		return get_field_offset( VT_DATA_SUPPORT )

	func data_support() -> TrackerDataType:
		var field_start: int = get_inline_field_start( VT_DATA_SUPPORT )
		if not field_start: return 0 as TrackerDataType
		var decoded: TrackerDataType = _fb_bytes.decode_u8( field_start )
		return decoded


## Builder class for TrackerInfo
class TrackerInfoBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the imu_type field to the TrackerInfo table
	func add_imu_type( imu_type: ImuType ) -> void:
		fbb_.add_element_ushort( TrackerInfo.VT_IMU_TYPE, imu_type )

	## Add the body_part field to the TrackerInfo table
	func add_body_part( body_part: BodyPart ) -> void:
		fbb_.add_element_ubyte( TrackerInfo.VT_BODY_PART, body_part )

	## Add the poll_rate field to the TrackerInfo table
	func add_poll_rate( poll_rate: HzF32 ) -> void:
		fbb_.add_bytes( TrackerInfo.VT_POLL_RATE, poll_rate._fb_bytes ) 

	## Add the mounting_orientation field to the TrackerInfo table
	func add_mounting_orientation( mounting_orientation: Quat ) -> void:
		fbb_.add_bytes( TrackerInfo.VT_MOUNTING_ORIENTATION, mounting_orientation._fb_bytes ) 

	## Add the editable field to the TrackerInfo table
	func add_editable( editable: bool ) -> void:
		fbb_.add_element_bool_default( TrackerInfo.VT_EDITABLE, editable, 0 )

	## Add the is_computed field to the TrackerInfo table
	func add_is_computed( is_computed: bool ) -> void:
		fbb_.add_element_bool_default( TrackerInfo.VT_IS_COMPUTED, is_computed, 0 )

	## Add the is_imu field to the TrackerInfo table
	func add_is_imu( is_imu: bool ) -> void:
		fbb_.add_element_bool_default( TrackerInfo.VT_IS_IMU, is_imu, 0 )

	## Add the display_name field to the TrackerInfo table
	func add_display_name( display_name_offset: int ) -> void:
		fbb_.add_offset( TrackerInfo.VT_DISPLAY_NAME, display_name_offset )

	## Add the custom_name field to the TrackerInfo table
	func add_custom_name( custom_name_offset: int ) -> void:
		fbb_.add_offset( TrackerInfo.VT_CUSTOM_NAME, custom_name_offset )

	## Add the allow_drift_compensation field to the TrackerInfo table
	func add_allow_drift_compensation( allow_drift_compensation: bool ) -> void:
		fbb_.add_element_bool_default( TrackerInfo.VT_ALLOW_DRIFT_COMPENSATION, allow_drift_compensation, 0 )

	## Add the mounting_reset_orientation field to the TrackerInfo table
	func add_mounting_reset_orientation( mounting_reset_orientation: Quat ) -> void:
		fbb_.add_bytes( TrackerInfo.VT_MOUNTING_RESET_ORIENTATION, mounting_reset_orientation._fb_bytes ) 

	## Add the is_hmd field to the TrackerInfo table
	func add_is_hmd( is_hmd: bool ) -> void:
		fbb_.add_element_bool_default( TrackerInfo.VT_IS_HMD, is_hmd, 0 )

	## Add the magnetometer field to the TrackerInfo table
	func add_magnetometer( magnetometer: MagnetometerStatus ) -> void:
		fbb_.add_element_ubyte( TrackerInfo.VT_MAGNETOMETER, magnetometer )

	## Add the data_support field to the TrackerInfo table
	func add_data_support( data_support: TrackerDataType ) -> void:
		fbb_.add_element_ubyte( TrackerInfo.VT_DATA_SUPPORT, data_support )

	## Finish building the TrackerInfo table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackerInfo table in one go using the provided [param _fbb]
static func create_TrackerInfo( _fbb: FlatBufferBuilder,
		imu_type: ImuType,
		body_part: BodyPart,
		poll_rate: HzF32,
		mounting_orientation: Quat,
		editable: bool,
		is_computed: bool,
		is_imu: bool,
		display_name: int,
		custom_name: int,
		allow_drift_compensation: bool,
		mounting_reset_orientation: Quat,
		is_hmd: bool,
		magnetometer: MagnetometerStatus,
		data_support: TrackerDataType ) -> int :
	var builder: TrackerInfoBuilder = TrackerInfoBuilder.new( _fbb );
	builder.add_mounting_reset_orientation( mounting_reset_orientation );
	builder.add_custom_name( custom_name );
	builder.add_display_name( display_name );
	builder.add_mounting_orientation( mounting_orientation );
	builder.add_poll_rate( poll_rate );
	builder.add_imu_type( imu_type );
	builder.add_data_support( data_support );
	builder.add_magnetometer( magnetometer );
	builder.add_is_hmd( is_hmd );
	builder.add_allow_drift_compensation( allow_drift_compensation );
	builder.add_is_imu( is_imu );
	builder.add_is_computed( is_computed );
	builder.add_editable( editable );
	builder.add_body_part( body_part );
	return builder.finish();

class DeviceDataMask extends FlatBuffer:

	enum {
		VT_TRACKER_DATA = 4,
		VT_DEVICE_DATA = 6
	}

	## Initialize the TrackerInfo with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackerInfo data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_DATA)
			and tracker_data().verify(verifier)
			and verify_field_u8(verifier, VT_DEVICE_DATA, 1)
			and verify_end_table(verifier)
		)

	## Return true if tracker_data is present in the buffer, else false
	func tracker_data_is_present() -> bool:
		return get_field_offset( VT_TRACKER_DATA )

	func tracker_data() -> SolarXR.TrackerDataMask:
		var field_start: int = get_offset_field_start( VT_TRACKER_DATA )
		if not field_start: return null
		return SolarXR.TrackerDataMask.new( _fb_bytes, field_start )

	## Return true if device_data is present in the buffer, else false
	func device_data_is_present() -> bool:
		return get_field_offset( VT_DEVICE_DATA )

	func device_data() -> bool:
		var field_start: int = get_inline_field_start( VT_DEVICE_DATA )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for DeviceDataMask
class DeviceDataMaskBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_data field to the DeviceDataMask table
	func add_tracker_data( tracker_data_offset: int ) -> void:
		fbb_.add_offset( DeviceDataMask.VT_TRACKER_DATA, tracker_data_offset )

	## Add the device_data field to the DeviceDataMask table
	func add_device_data( device_data: bool ) -> void:
		fbb_.add_element_bool_default( DeviceDataMask.VT_DEVICE_DATA, device_data, 0 )

	## Finish building the DeviceDataMask table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a DeviceDataMask table in one go using the provided [param _fbb]
static func create_DeviceDataMask( _fbb: FlatBufferBuilder,
		tracker_data: int,
		device_data: bool ) -> int :
	var builder: DeviceDataMaskBuilder = DeviceDataMaskBuilder.new( _fbb );
	builder.add_tracker_data( tracker_data );
	builder.add_device_data( device_data );
	return builder.finish();

class DeviceData extends FlatBuffer:

	enum {
		VT_ID = 4,
		VT_CUSTOM_NAME = 6,
		VT_HARDWARE_INFO = 8,
		VT_HARDWARE_STATUS = 10,
		VT_TRACKERS = 12
	}

	## Initialize the DeviceDataMask with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the DeviceDataMask data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_ID, 1)
			and verify_offset(verifier, VT_CUSTOM_NAME)
			and verify_string( verifier, VT_CUSTOM_NAME )
			and verify_offset(verifier, VT_HARDWARE_INFO)
			and hardware_info().verify(verifier)
			and verify_offset(verifier, VT_HARDWARE_STATUS)
			and hardware_status().verify(verifier)
			and verify_offset(verifier, VT_TRACKERS)
			and verify_vector_u32(verifier, VT_TRACKERS)
			and trackers_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if id is present in the buffer, else false
	func id_is_present() -> bool:
		return get_field_offset( VT_ID )

	func id() -> DeviceId:
		var field_start: int = get_inline_field_start( VT_ID )
		if not field_start: return null
		return SolarXR.DeviceId.new( _fb_bytes, field_start )

	## Return true if custom_name is present in the buffer, else false
	func custom_name_is_present() -> bool:
		return get_field_offset( VT_CUSTOM_NAME )

	func custom_name() -> String:
		var field_start: int = get_offset_field_start( VT_CUSTOM_NAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if hardware_info is present in the buffer, else false
	func hardware_info_is_present() -> bool:
		return get_field_offset( VT_HARDWARE_INFO )

	func hardware_info() -> SolarXR.HardwareInfo:
		var field_start: int = get_offset_field_start( VT_HARDWARE_INFO )
		if not field_start: return null
		return SolarXR.HardwareInfo.new( _fb_bytes, field_start )

	## Return true if hardware_status is present in the buffer, else false
	func hardware_status_is_present() -> bool:
		return get_field_offset( VT_HARDWARE_STATUS )

	func hardware_status() -> SolarXR.HardwareStatus:
		var field_start: int = get_offset_field_start( VT_HARDWARE_STATUS )
		if not field_start: return null
		return SolarXR.HardwareStatus.new( _fb_bytes, field_start )

	## Return true if trackers is present in the buffer, else false
	func trackers_is_present() -> bool:
		return get_field_offset( VT_TRACKERS )

	func trackers_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.TrackerData.new()
		for i in trackers_size():
			if not trackers_at(i, tmp).verify(verifier):
				return false
		return true

	func trackers_size() -> int:
		var array_start: int = get_offset_field_start( VT_TRACKERS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func trackers_at( idx: int, into: TrackerData = null ) -> TrackerData:
		var field_start: int = get_offset_field_start( VT_TRACKERS )
		assert(field_start, 'Field "trackers" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.TrackerData.new( _fb_bytes, element_pos + element_offset )

	func trackers() -> Array:
		var array_start: int = get_offset_field_start( VT_TRACKERS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.TrackerData.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for DeviceData
class DeviceDataBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the id field to the DeviceData table
	func add_id( id: DeviceId ) -> void:
		fbb_.add_bytes( DeviceData.VT_ID, id._fb_bytes ) 

	## Add the custom_name field to the DeviceData table
	func add_custom_name( custom_name_offset: int ) -> void:
		fbb_.add_offset( DeviceData.VT_CUSTOM_NAME, custom_name_offset )

	## Add the hardware_info field to the DeviceData table
	func add_hardware_info( hardware_info_offset: int ) -> void:
		fbb_.add_offset( DeviceData.VT_HARDWARE_INFO, hardware_info_offset )

	## Add the hardware_status field to the DeviceData table
	func add_hardware_status( hardware_status_offset: int ) -> void:
		fbb_.add_offset( DeviceData.VT_HARDWARE_STATUS, hardware_status_offset )

	## Add the trackers field to the DeviceData table
	func add_trackers( trackers_offset: int ) -> void:
		fbb_.add_offset( DeviceData.VT_TRACKERS, trackers_offset )

	## Finish building the DeviceData table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a DeviceData table in one go using the provided [param _fbb]
static func create_DeviceData( _fbb: FlatBufferBuilder,
		id: DeviceId,
		custom_name: int,
		hardware_info: int,
		hardware_status: int,
		trackers: int ) -> int :
	var builder: DeviceDataBuilder = DeviceDataBuilder.new( _fbb );
	builder.add_trackers( trackers );
	builder.add_hardware_status( hardware_status );
	builder.add_hardware_info( hardware_info );
	builder.add_custom_name( custom_name );
	builder.add_id( id );
	return builder.finish();

class Bone extends FlatBuffer:

	enum {
		VT_BODY_PART = 4,
		VT_ROTATION_G = 6,
		VT_BONE_LENGTH = 8,
		VT_HEAD_POSITION_G = 10
	}

	## Initialize the DeviceData with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the DeviceData data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_BODY_PART, 1)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_ROTATION_G, 4)
			and verify_field_float(verifier, VT_BONE_LENGTH, 4)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_HEAD_POSITION_G, 4)
			and verify_end_table(verifier)
		)

	## Return true if body_part is present in the buffer, else false
	func body_part_is_present() -> bool:
		return get_field_offset( VT_BODY_PART )

	func body_part() -> BodyPart:
		var field_start: int = get_inline_field_start( VT_BODY_PART )
		if not field_start: return 0 as BodyPart
		var decoded: BodyPart = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if rotation_g is present in the buffer, else false
	func rotation_g_is_present() -> bool:
		return get_field_offset( VT_ROTATION_G )

	func rotation_g() -> Quat:
		var field_start: int = get_inline_field_start( VT_ROTATION_G )
		if not field_start: return null
		return SolarXR.Quat.new( _fb_bytes, field_start )

	## Return true if bone_length is present in the buffer, else false
	func bone_length_is_present() -> bool:
		return get_field_offset( VT_BONE_LENGTH )

	func bone_length() -> float:
		var field_start: int = get_inline_field_start( VT_BONE_LENGTH )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if head_position_g is present in the buffer, else false
	func head_position_g_is_present() -> bool:
		return get_field_offset( VT_HEAD_POSITION_G )

	func head_position_g() -> Vec3f:
		var field_start: int = get_inline_field_start( VT_HEAD_POSITION_G )
		if not field_start: return null
		return SolarXR.Vec3f.new( _fb_bytes, field_start )


## Builder class for Bone
class BoneBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the body_part field to the Bone table
	func add_body_part( body_part: BodyPart ) -> void:
		fbb_.add_element_ubyte( Bone.VT_BODY_PART, body_part )

	## Add the rotation_g field to the Bone table
	func add_rotation_g( rotation_g: Quat ) -> void:
		fbb_.add_bytes( Bone.VT_ROTATION_G, rotation_g._fb_bytes ) 

	## Add the bone_length field to the Bone table
	func add_bone_length( bone_length: float ) -> void:
		fbb_.add_element_float_default( Bone.VT_BONE_LENGTH, bone_length, 0.0 )

	## Add the head_position_g field to the Bone table
	func add_head_position_g( head_position_g: Vec3f ) -> void:
		fbb_.add_bytes( Bone.VT_HEAD_POSITION_G, head_position_g._fb_bytes ) 

	## Finish building the Bone table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a Bone table in one go using the provided [param _fbb]
static func create_Bone( _fbb: FlatBufferBuilder,
		body_part: BodyPart,
		rotation_g: Quat,
		bone_length: float,
		head_position_g: Vec3f ) -> int :
	var builder: BoneBuilder = BoneBuilder.new( _fbb );
	builder.add_head_position_g( head_position_g );
	builder.add_bone_length( bone_length );
	builder.add_rotation_g( rotation_g );
	builder.add_body_part( body_part );
	return builder.finish();

class ServerGuards extends FlatBuffer:

	enum {
		VT_CANDOMOUNTING = 4,
		VT_CANDOYAWRESET = 6,
		VT_CANDOUSERHEIGHTCALIBRATION = 8
	}

	## Initialize the Bone with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the Bone data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_CANDOMOUNTING, 1)
			and verify_field_u8(verifier, VT_CANDOYAWRESET, 1)
			and verify_field_u8(verifier, VT_CANDOUSERHEIGHTCALIBRATION, 1)
			and verify_end_table(verifier)
		)

	## Return true if canDoMounting is present in the buffer, else false
	func canDoMounting_is_present() -> bool:
		return get_field_offset( VT_CANDOMOUNTING )

	func canDoMounting() -> bool:
		var field_start: int = get_inline_field_start( VT_CANDOMOUNTING )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if canDoYawReset is present in the buffer, else false
	func canDoYawReset_is_present() -> bool:
		return get_field_offset( VT_CANDOYAWRESET )

	func canDoYawReset() -> bool:
		var field_start: int = get_inline_field_start( VT_CANDOYAWRESET )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if canDoUserHeightCalibration is present in the buffer, else false
	func canDoUserHeightCalibration_is_present() -> bool:
		return get_field_offset( VT_CANDOUSERHEIGHTCALIBRATION )

	func canDoUserHeightCalibration() -> bool:
		var field_start: int = get_inline_field_start( VT_CANDOUSERHEIGHTCALIBRATION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for ServerGuards
class ServerGuardsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the canDoMounting field to the ServerGuards table
	func add_canDoMounting( canDoMounting: bool ) -> void:
		fbb_.add_element_bool_default( ServerGuards.VT_CANDOMOUNTING, canDoMounting, 0 )

	## Add the canDoYawReset field to the ServerGuards table
	func add_canDoYawReset( canDoYawReset: bool ) -> void:
		fbb_.add_element_bool_default( ServerGuards.VT_CANDOYAWRESET, canDoYawReset, 0 )

	## Add the canDoUserHeightCalibration field to the ServerGuards table
	func add_canDoUserHeightCalibration( canDoUserHeightCalibration: bool ) -> void:
		fbb_.add_element_bool_default( ServerGuards.VT_CANDOUSERHEIGHTCALIBRATION, canDoUserHeightCalibration, 0 )

	## Finish building the ServerGuards table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ServerGuards table in one go using the provided [param _fbb]
static func create_ServerGuards( _fbb: FlatBufferBuilder,
		canDoMounting: bool,
		canDoYawReset: bool,
		canDoUserHeightCalibration: bool ) -> int :
	var builder: ServerGuardsBuilder = ServerGuardsBuilder.new( _fbb );
	builder.add_canDoUserHeightCalibration( canDoUserHeightCalibration );
	builder.add_canDoYawReset( canDoYawReset );
	builder.add_canDoMounting( canDoMounting );
	return builder.finish();

class DataFeedMessageHeader extends FlatBuffer:

	enum {
		VT_MESSAGE_TYPE = 4,
		VT_MESSAGE = 6
	}

	## Initialize the ServerGuards with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ServerGuards data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_MESSAGE_TYPE, 1)
			and verify_offset(verifier, VT_MESSAGE)
			and SolarXR.data_feed_message_verify(verifier, message(), message_type())
			and verify_end_table(verifier)
		)

	## Return true if message is present in the buffer, else false
	func message_is_present() -> bool:
		return get_field_offset( VT_MESSAGE )

	## Get the union type of the message_type field
	func message_type() -> DataFeedMessage:
		var field_start: int = get_inline_field_start( VT_MESSAGE_TYPE )
		if not field_start: return 0 as DataFeedMessage
		var decoded: DataFeedMessage = _fb_bytes.decode_u8( field_start )
		return decoded

	func message() -> Variant:
		var field_start: int = get_offset_field_start( VT_MESSAGE )
		if not field_start: return null
		match( message_type() ):
			SolarXR.DataFeedMessage.POLL_DATA_FEED:
				return SolarXR.PollDataFeed.new( _fb_bytes, field_start )
			SolarXR.DataFeedMessage.START_DATA_FEED:
				return SolarXR.StartDataFeed.new( _fb_bytes, field_start )
			SolarXR.DataFeedMessage.DATA_FEED_UPDATE:
				return SolarXR.DataFeedUpdate.new( _fb_bytes, field_start )
			SolarXR.DataFeedMessage.DATA_FEED_CONFIG:
				return SolarXR.DataFeedConfig.new( _fb_bytes, field_start )
		return null


## Builder class for DataFeedMessageHeader
class DataFeedMessageHeaderBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the message_type field to the DataFeedMessageHeader table
	func add_message_type( message_type: DataFeedMessage ) -> void:
		fbb_.add_element_ubyte( DataFeedMessageHeader.VT_MESSAGE_TYPE, message_type )

	## Add the message field to the DataFeedMessageHeader table
	func add_message( message_offset: int ) -> void:
		fbb_.add_offset( DataFeedMessageHeader.VT_MESSAGE, message_offset )

	## Finish building the DataFeedMessageHeader table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a DataFeedMessageHeader table in one go using the provided [param _fbb]
static func create_DataFeedMessageHeader( _fbb: FlatBufferBuilder,
		message_type: DataFeedMessage,
		message: int ) -> int :
	var builder: DataFeedMessageHeaderBuilder = DataFeedMessageHeaderBuilder.new( _fbb );
	builder.add_message( message );
	builder.add_message_type( message_type );
	return builder.finish();

class PollDataFeed extends FlatBuffer:

	enum {
		VT_CONFIG = 4
	}

	## Initialize the DataFeedMessageHeader with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the DataFeedMessageHeader data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_CONFIG)
			and config().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if config is present in the buffer, else false
	func config_is_present() -> bool:
		return get_field_offset( VT_CONFIG )

	func config() -> SolarXR.DataFeedConfig:
		var field_start: int = get_offset_field_start( VT_CONFIG )
		if not field_start: return null
		return SolarXR.DataFeedConfig.new( _fb_bytes, field_start )


## Builder class for PollDataFeed
class PollDataFeedBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the config field to the PollDataFeed table
	func add_config( config_offset: int ) -> void:
		fbb_.add_offset( PollDataFeed.VT_CONFIG, config_offset )

	## Finish building the PollDataFeed table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a PollDataFeed table in one go using the provided [param _fbb]
static func create_PollDataFeed( _fbb: FlatBufferBuilder,
		config: int ) -> int :
	var builder: PollDataFeedBuilder = PollDataFeedBuilder.new( _fbb );
	builder.add_config( config );
	return builder.finish();

class StartDataFeed extends FlatBuffer:

	enum {
		VT_DATA_FEEDS = 4
	}

	## Initialize the PollDataFeed with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the PollDataFeed data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_DATA_FEEDS)
			and verify_vector_u32(verifier, VT_DATA_FEEDS)
			and data_feeds_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if data_feeds is present in the buffer, else false
	func data_feeds_is_present() -> bool:
		return get_field_offset( VT_DATA_FEEDS )

	func data_feeds_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.DataFeedConfig.new()
		for i in data_feeds_size():
			if not data_feeds_at(i, tmp).verify(verifier):
				return false
		return true

	func data_feeds_size() -> int:
		var array_start: int = get_offset_field_start( VT_DATA_FEEDS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func data_feeds_at( idx: int, into: DataFeedConfig = null ) -> DataFeedConfig:
		var field_start: int = get_offset_field_start( VT_DATA_FEEDS )
		assert(field_start, 'Field "data_feeds" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.DataFeedConfig.new( _fb_bytes, element_pos + element_offset )

	func data_feeds() -> Array:
		var array_start: int = get_offset_field_start( VT_DATA_FEEDS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.DataFeedConfig.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for StartDataFeed
class StartDataFeedBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the data_feeds field to the StartDataFeed table
	func add_data_feeds( data_feeds_offset: int ) -> void:
		fbb_.add_offset( StartDataFeed.VT_DATA_FEEDS, data_feeds_offset )

	## Finish building the StartDataFeed table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StartDataFeed table in one go using the provided [param _fbb]
static func create_StartDataFeed( _fbb: FlatBufferBuilder,
		data_feeds: int ) -> int :
	var builder: StartDataFeedBuilder = StartDataFeedBuilder.new( _fbb );
	builder.add_data_feeds( data_feeds );
	return builder.finish();

class DataFeedUpdate extends FlatBuffer:

	enum {
		VT_DEVICES = 4,
		VT_SYNTHETIC_TRACKERS = 6,
		VT_BONES = 8,
		VT_STAY_ALIGNED_POSE = 10,
		VT_INDEX = 12,
		VT_SERVER_GUARDS = 14
	}

	## Initialize the StartDataFeed with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StartDataFeed data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_DEVICES)
			and verify_vector_u32(verifier, VT_DEVICES)
			and devices_verify(verifier)
			and verify_offset(verifier, VT_SYNTHETIC_TRACKERS)
			and verify_vector_u32(verifier, VT_SYNTHETIC_TRACKERS)
			and synthetic_trackers_verify(verifier)
			and verify_offset(verifier, VT_BONES)
			and verify_vector_u32(verifier, VT_BONES)
			and bones_verify(verifier)
			and verify_offset(verifier, VT_STAY_ALIGNED_POSE)
			and stay_aligned_pose().verify(verifier)
			and verify_field_u8(verifier, VT_INDEX, 1)
			and verify_offset(verifier, VT_SERVER_GUARDS)
			and server_guards().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if devices is present in the buffer, else false
	func devices_is_present() -> bool:
		return get_field_offset( VT_DEVICES )

	func devices_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.DeviceData.new()
		for i in devices_size():
			if not devices_at(i, tmp).verify(verifier):
				return false
		return true

	func devices_size() -> int:
		var array_start: int = get_offset_field_start( VT_DEVICES )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func devices_at( idx: int, into: DeviceData = null ) -> DeviceData:
		var field_start: int = get_offset_field_start( VT_DEVICES )
		assert(field_start, 'Field "devices" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.DeviceData.new( _fb_bytes, element_pos + element_offset )

	func devices() -> Array:
		var array_start: int = get_offset_field_start( VT_DEVICES )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.DeviceData.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array

	## Return true if synthetic_trackers is present in the buffer, else false
	func synthetic_trackers_is_present() -> bool:
		return get_field_offset( VT_SYNTHETIC_TRACKERS )

	func synthetic_trackers_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.TrackerData.new()
		for i in synthetic_trackers_size():
			if not synthetic_trackers_at(i, tmp).verify(verifier):
				return false
		return true

	func synthetic_trackers_size() -> int:
		var array_start: int = get_offset_field_start( VT_SYNTHETIC_TRACKERS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func synthetic_trackers_at( idx: int, into: TrackerData = null ) -> TrackerData:
		var field_start: int = get_offset_field_start( VT_SYNTHETIC_TRACKERS )
		assert(field_start, 'Field "synthetic_trackers" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.TrackerData.new( _fb_bytes, element_pos + element_offset )

	func synthetic_trackers() -> Array:
		var array_start: int = get_offset_field_start( VT_SYNTHETIC_TRACKERS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.TrackerData.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array

	## Return true if bones is present in the buffer, else false
	func bones_is_present() -> bool:
		return get_field_offset( VT_BONES )

	func bones_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.Bone.new()
		for i in bones_size():
			if not bones_at(i, tmp).verify(verifier):
				return false
		return true

	func bones_size() -> int:
		var array_start: int = get_offset_field_start( VT_BONES )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func bones_at( idx: int, into: Bone = null ) -> Bone:
		var field_start: int = get_offset_field_start( VT_BONES )
		assert(field_start, 'Field "bones" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.Bone.new( _fb_bytes, element_pos + element_offset )

	func bones() -> Array:
		var array_start: int = get_offset_field_start( VT_BONES )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.Bone.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array

	## Return true if stay_aligned_pose is present in the buffer, else false
	func stay_aligned_pose_is_present() -> bool:
		return get_field_offset( VT_STAY_ALIGNED_POSE )

	func stay_aligned_pose() -> SolarXR.StayAlignedPose:
		var field_start: int = get_offset_field_start( VT_STAY_ALIGNED_POSE )
		if not field_start: return null
		return SolarXR.StayAlignedPose.new( _fb_bytes, field_start )

	## Return true if index is present in the buffer, else false
	func index_is_present() -> bool:
		return get_field_offset( VT_INDEX )

	func index() -> int:
		var field_start: int = get_inline_field_start( VT_INDEX )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if server_guards is present in the buffer, else false
	func server_guards_is_present() -> bool:
		return get_field_offset( VT_SERVER_GUARDS )

	func server_guards() -> SolarXR.ServerGuards:
		var field_start: int = get_offset_field_start( VT_SERVER_GUARDS )
		if not field_start: return null
		return SolarXR.ServerGuards.new( _fb_bytes, field_start )


## Builder class for DataFeedUpdate
class DataFeedUpdateBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the devices field to the DataFeedUpdate table
	func add_devices( devices_offset: int ) -> void:
		fbb_.add_offset( DataFeedUpdate.VT_DEVICES, devices_offset )

	## Add the synthetic_trackers field to the DataFeedUpdate table
	func add_synthetic_trackers( synthetic_trackers_offset: int ) -> void:
		fbb_.add_offset( DataFeedUpdate.VT_SYNTHETIC_TRACKERS, synthetic_trackers_offset )

	## Add the bones field to the DataFeedUpdate table
	func add_bones( bones_offset: int ) -> void:
		fbb_.add_offset( DataFeedUpdate.VT_BONES, bones_offset )

	## Add the stay_aligned_pose field to the DataFeedUpdate table
	func add_stay_aligned_pose( stay_aligned_pose_offset: int ) -> void:
		fbb_.add_offset( DataFeedUpdate.VT_STAY_ALIGNED_POSE, stay_aligned_pose_offset )

	## Add the index field to the DataFeedUpdate table
	func add_index( index: int ) -> void:
		fbb_.add_element_ubyte_default( DataFeedUpdate.VT_INDEX, index, 0 )

	## Add the server_guards field to the DataFeedUpdate table
	func add_server_guards( server_guards_offset: int ) -> void:
		fbb_.add_offset( DataFeedUpdate.VT_SERVER_GUARDS, server_guards_offset )

	## Finish building the DataFeedUpdate table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a DataFeedUpdate table in one go using the provided [param _fbb]
static func create_DataFeedUpdate( _fbb: FlatBufferBuilder,
		devices: int,
		synthetic_trackers: int,
		bones: int,
		stay_aligned_pose: int,
		index: int,
		server_guards: int ) -> int :
	var builder: DataFeedUpdateBuilder = DataFeedUpdateBuilder.new( _fbb );
	builder.add_server_guards( server_guards );
	builder.add_stay_aligned_pose( stay_aligned_pose );
	builder.add_bones( bones );
	builder.add_synthetic_trackers( synthetic_trackers );
	builder.add_devices( devices );
	builder.add_index( index );
	return builder.finish();

class DataFeedConfig extends FlatBuffer:

	enum {
		VT_MINIMUM_TIME_SINCE_LAST = 4,
		VT_DATA_MASK = 6,
		VT_SYNTHETIC_TRACKERS_MASK = 8,
		VT_BONE_MASK = 10,
		VT_STAY_ALIGNED_POSE_MASK = 12,
		VT_SERVER_GUARDS_MASK = 14
	}

	## Initialize the DataFeedUpdate with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the DataFeedUpdate data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u16(verifier, VT_MINIMUM_TIME_SINCE_LAST, 2)
			and verify_offset(verifier, VT_DATA_MASK)
			and data_mask().verify(verifier)
			and verify_offset(verifier, VT_SYNTHETIC_TRACKERS_MASK)
			and synthetic_trackers_mask().verify(verifier)
			and verify_field_u8(verifier, VT_BONE_MASK, 1)
			and verify_field_u8(verifier, VT_STAY_ALIGNED_POSE_MASK, 1)
			and verify_field_u8(verifier, VT_SERVER_GUARDS_MASK, 1)
			and verify_end_table(verifier)
		)

	## Return true if minimum_time_since_last is present in the buffer, else false
	func minimum_time_since_last_is_present() -> bool:
		return get_field_offset( VT_MINIMUM_TIME_SINCE_LAST )

	func minimum_time_since_last() -> int:
		var field_start: int = get_inline_field_start( VT_MINIMUM_TIME_SINCE_LAST )
		if not field_start: return 0
		return _fb_bytes.decode_u16( field_start )

	## Return true if data_mask is present in the buffer, else false
	func data_mask_is_present() -> bool:
		return get_field_offset( VT_DATA_MASK )

	func data_mask() -> SolarXR.DeviceDataMask:
		var field_start: int = get_offset_field_start( VT_DATA_MASK )
		if not field_start: return null
		return SolarXR.DeviceDataMask.new( _fb_bytes, field_start )

	## Return true if synthetic_trackers_mask is present in the buffer, else false
	func synthetic_trackers_mask_is_present() -> bool:
		return get_field_offset( VT_SYNTHETIC_TRACKERS_MASK )

	func synthetic_trackers_mask() -> SolarXR.TrackerDataMask:
		var field_start: int = get_offset_field_start( VT_SYNTHETIC_TRACKERS_MASK )
		if not field_start: return null
		return SolarXR.TrackerDataMask.new( _fb_bytes, field_start )

	## Return true if bone_mask is present in the buffer, else false
	func bone_mask_is_present() -> bool:
		return get_field_offset( VT_BONE_MASK )

	func bone_mask() -> bool:
		var field_start: int = get_inline_field_start( VT_BONE_MASK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if stay_aligned_pose_mask is present in the buffer, else false
	func stay_aligned_pose_mask_is_present() -> bool:
		return get_field_offset( VT_STAY_ALIGNED_POSE_MASK )

	func stay_aligned_pose_mask() -> bool:
		var field_start: int = get_inline_field_start( VT_STAY_ALIGNED_POSE_MASK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if server_guards_mask is present in the buffer, else false
	func server_guards_mask_is_present() -> bool:
		return get_field_offset( VT_SERVER_GUARDS_MASK )

	func server_guards_mask() -> bool:
		var field_start: int = get_inline_field_start( VT_SERVER_GUARDS_MASK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for DataFeedConfig
class DataFeedConfigBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the minimum_time_since_last field to the DataFeedConfig table
	func add_minimum_time_since_last( minimum_time_since_last: int ) -> void:
		fbb_.add_element_ushort_default( DataFeedConfig.VT_MINIMUM_TIME_SINCE_LAST, minimum_time_since_last, 0 )

	## Add the data_mask field to the DataFeedConfig table
	func add_data_mask( data_mask_offset: int ) -> void:
		fbb_.add_offset( DataFeedConfig.VT_DATA_MASK, data_mask_offset )

	## Add the synthetic_trackers_mask field to the DataFeedConfig table
	func add_synthetic_trackers_mask( synthetic_trackers_mask_offset: int ) -> void:
		fbb_.add_offset( DataFeedConfig.VT_SYNTHETIC_TRACKERS_MASK, synthetic_trackers_mask_offset )

	## Add the bone_mask field to the DataFeedConfig table
	func add_bone_mask( bone_mask: bool ) -> void:
		fbb_.add_element_bool_default( DataFeedConfig.VT_BONE_MASK, bone_mask, 0 )

	## Add the stay_aligned_pose_mask field to the DataFeedConfig table
	func add_stay_aligned_pose_mask( stay_aligned_pose_mask: bool ) -> void:
		fbb_.add_element_bool_default( DataFeedConfig.VT_STAY_ALIGNED_POSE_MASK, stay_aligned_pose_mask, 0 )

	## Add the server_guards_mask field to the DataFeedConfig table
	func add_server_guards_mask( server_guards_mask: bool ) -> void:
		fbb_.add_element_bool_default( DataFeedConfig.VT_SERVER_GUARDS_MASK, server_guards_mask, 0 )

	## Finish building the DataFeedConfig table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a DataFeedConfig table in one go using the provided [param _fbb]
static func create_DataFeedConfig( _fbb: FlatBufferBuilder,
		minimum_time_since_last: int,
		data_mask: int,
		synthetic_trackers_mask: int,
		bone_mask: bool,
		stay_aligned_pose_mask: bool,
		server_guards_mask: bool ) -> int :
	var builder: DataFeedConfigBuilder = DataFeedConfigBuilder.new( _fbb );
	builder.add_synthetic_trackers_mask( synthetic_trackers_mask );
	builder.add_data_mask( data_mask );
	builder.add_minimum_time_since_last( minimum_time_since_last );
	builder.add_server_guards_mask( server_guards_mask );
	builder.add_stay_aligned_pose_mask( stay_aligned_pose_mask );
	builder.add_bone_mask( bone_mask );
	return builder.finish();

class ModelToggles extends FlatBuffer:

	enum {
		VT_EXTENDED_SPINE = 4,
		VT_EXTENDED_PELVIS = 6,
		VT_EXTENDED_KNEE = 8,
		VT_FORCE_ARMS_FROM_HMD = 10,
		VT_FLOOR_CLIP = 12,
		VT_SKATING_CORRECTION = 14,
		VT_VIVE_EMULATION = 16,
		VT_TOE_SNAP = 18,
		VT_FOOT_PLANT = 20,
		VT_SELF_LOCALIZATION = 22,
		VT_USE_POSITION = 24,
		VT_ENFORCE_CONSTRAINTS = 26,
		VT_CORRECT_CONSTRAINTS = 28
	}

	## Initialize the DataFeedConfig with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the DataFeedConfig data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_EXTENDED_SPINE, 1)
			and verify_field_u8(verifier, VT_EXTENDED_PELVIS, 1)
			and verify_field_u8(verifier, VT_EXTENDED_KNEE, 1)
			and verify_field_u8(verifier, VT_FORCE_ARMS_FROM_HMD, 1)
			and verify_field_u8(verifier, VT_FLOOR_CLIP, 1)
			and verify_field_u8(verifier, VT_SKATING_CORRECTION, 1)
			and verify_field_u8(verifier, VT_TOE_SNAP, 1)
			and verify_field_u8(verifier, VT_FOOT_PLANT, 1)
			and verify_field_u8(verifier, VT_SELF_LOCALIZATION, 1)
			and verify_field_u8(verifier, VT_USE_POSITION, 1)
			and verify_field_u8(verifier, VT_ENFORCE_CONSTRAINTS, 1)
			and verify_field_u8(verifier, VT_CORRECT_CONSTRAINTS, 1)
			and verify_end_table(verifier)
		)

	## Return true if extended_spine is present in the buffer, else false
	func extended_spine_is_present() -> bool:
		return get_field_offset( VT_EXTENDED_SPINE )

	func extended_spine() -> bool:
		var field_start: int = get_inline_field_start( VT_EXTENDED_SPINE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if extended_pelvis is present in the buffer, else false
	func extended_pelvis_is_present() -> bool:
		return get_field_offset( VT_EXTENDED_PELVIS )

	func extended_pelvis() -> bool:
		var field_start: int = get_inline_field_start( VT_EXTENDED_PELVIS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if extended_knee is present in the buffer, else false
	func extended_knee_is_present() -> bool:
		return get_field_offset( VT_EXTENDED_KNEE )

	func extended_knee() -> bool:
		var field_start: int = get_inline_field_start( VT_EXTENDED_KNEE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if force_arms_from_hmd is present in the buffer, else false
	func force_arms_from_hmd_is_present() -> bool:
		return get_field_offset( VT_FORCE_ARMS_FROM_HMD )

	func force_arms_from_hmd() -> bool:
		var field_start: int = get_inline_field_start( VT_FORCE_ARMS_FROM_HMD )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if floor_clip is present in the buffer, else false
	func floor_clip_is_present() -> bool:
		return get_field_offset( VT_FLOOR_CLIP )

	func floor_clip() -> bool:
		var field_start: int = get_inline_field_start( VT_FLOOR_CLIP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if skating_correction is present in the buffer, else false
	func skating_correction_is_present() -> bool:
		return get_field_offset( VT_SKATING_CORRECTION )

	func skating_correction() -> bool:
		var field_start: int = get_inline_field_start( VT_SKATING_CORRECTION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if toe_snap is present in the buffer, else false
	func toe_snap_is_present() -> bool:
		return get_field_offset( VT_TOE_SNAP )

	func toe_snap() -> bool:
		var field_start: int = get_inline_field_start( VT_TOE_SNAP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if foot_plant is present in the buffer, else false
	func foot_plant_is_present() -> bool:
		return get_field_offset( VT_FOOT_PLANT )

	func foot_plant() -> bool:
		var field_start: int = get_inline_field_start( VT_FOOT_PLANT )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if self_localization is present in the buffer, else false
	func self_localization_is_present() -> bool:
		return get_field_offset( VT_SELF_LOCALIZATION )

	func self_localization() -> bool:
		var field_start: int = get_inline_field_start( VT_SELF_LOCALIZATION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if use_position is present in the buffer, else false
	func use_position_is_present() -> bool:
		return get_field_offset( VT_USE_POSITION )

	func use_position() -> bool:
		var field_start: int = get_inline_field_start( VT_USE_POSITION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if enforce_constraints is present in the buffer, else false
	func enforce_constraints_is_present() -> bool:
		return get_field_offset( VT_ENFORCE_CONSTRAINTS )

	func enforce_constraints() -> bool:
		var field_start: int = get_inline_field_start( VT_ENFORCE_CONSTRAINTS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if correct_constraints is present in the buffer, else false
	func correct_constraints_is_present() -> bool:
		return get_field_offset( VT_CORRECT_CONSTRAINTS )

	func correct_constraints() -> bool:
		var field_start: int = get_inline_field_start( VT_CORRECT_CONSTRAINTS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for ModelToggles
class ModelTogglesBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the extended_spine field to the ModelToggles table
	func add_extended_spine( extended_spine: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_EXTENDED_SPINE, extended_spine, 0 )

	## Add the extended_pelvis field to the ModelToggles table
	func add_extended_pelvis( extended_pelvis: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_EXTENDED_PELVIS, extended_pelvis, 0 )

	## Add the extended_knee field to the ModelToggles table
	func add_extended_knee( extended_knee: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_EXTENDED_KNEE, extended_knee, 0 )

	## Add the force_arms_from_hmd field to the ModelToggles table
	func add_force_arms_from_hmd( force_arms_from_hmd: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_FORCE_ARMS_FROM_HMD, force_arms_from_hmd, 0 )

	## Add the floor_clip field to the ModelToggles table
	func add_floor_clip( floor_clip: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_FLOOR_CLIP, floor_clip, 0 )

	## Add the skating_correction field to the ModelToggles table
	func add_skating_correction( skating_correction: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_SKATING_CORRECTION, skating_correction, 0 )

	## Add the toe_snap field to the ModelToggles table
	func add_toe_snap( toe_snap: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_TOE_SNAP, toe_snap, 0 )

	## Add the foot_plant field to the ModelToggles table
	func add_foot_plant( foot_plant: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_FOOT_PLANT, foot_plant, 0 )

	## Add the self_localization field to the ModelToggles table
	func add_self_localization( self_localization: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_SELF_LOCALIZATION, self_localization, 0 )

	## Add the use_position field to the ModelToggles table
	func add_use_position( use_position: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_USE_POSITION, use_position, 0 )

	## Add the enforce_constraints field to the ModelToggles table
	func add_enforce_constraints( enforce_constraints: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_ENFORCE_CONSTRAINTS, enforce_constraints, 0 )

	## Add the correct_constraints field to the ModelToggles table
	func add_correct_constraints( correct_constraints: bool ) -> void:
		fbb_.add_element_bool_default( ModelToggles.VT_CORRECT_CONSTRAINTS, correct_constraints, 0 )

	## Finish building the ModelToggles table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ModelToggles table in one go using the provided [param _fbb]
static func create_ModelToggles( _fbb: FlatBufferBuilder,
		extended_spine: bool,
		extended_pelvis: bool,
		extended_knee: bool,
		force_arms_from_hmd: bool,
		floor_clip: bool,
		skating_correction: bool,
		toe_snap: bool,
		foot_plant: bool,
		self_localization: bool,
		use_position: bool,
		enforce_constraints: bool,
		correct_constraints: bool ) -> int :
	var builder: ModelTogglesBuilder = ModelTogglesBuilder.new( _fbb );
	builder.add_correct_constraints( correct_constraints );
	builder.add_enforce_constraints( enforce_constraints );
	builder.add_use_position( use_position );
	builder.add_self_localization( self_localization );
	builder.add_foot_plant( foot_plant );
	builder.add_toe_snap( toe_snap );
	builder.add_skating_correction( skating_correction );
	builder.add_floor_clip( floor_clip );
	builder.add_force_arms_from_hmd( force_arms_from_hmd );
	builder.add_extended_knee( extended_knee );
	builder.add_extended_pelvis( extended_pelvis );
	builder.add_extended_spine( extended_spine );
	return builder.finish();

class ModelRatios extends FlatBuffer:

	enum {
		VT_IMPUTE_WAIST_FROM_CHEST_HIP = 4,
		VT_IMPUTE_WAIST_FROM_CHEST_LEGS = 6,
		VT_IMPUTE_HIP_FROM_CHEST_LEGS = 8,
		VT_IMPUTE_HIP_FROM_WAIST_LEGS = 10,
		VT_INTERP_HIP_LEGS = 12,
		VT_INTERP_KNEE_TRACKER_ANKLE = 14,
		VT_INTERP_KNEE_ANKLE = 16
	}

	## Initialize the ModelToggles with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ModelToggles data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_float(verifier, VT_IMPUTE_WAIST_FROM_CHEST_HIP, 4)
			and verify_field_float(verifier, VT_IMPUTE_WAIST_FROM_CHEST_LEGS, 4)
			and verify_field_float(verifier, VT_IMPUTE_HIP_FROM_CHEST_LEGS, 4)
			and verify_field_float(verifier, VT_IMPUTE_HIP_FROM_WAIST_LEGS, 4)
			and verify_field_float(verifier, VT_INTERP_HIP_LEGS, 4)
			and verify_field_float(verifier, VT_INTERP_KNEE_TRACKER_ANKLE, 4)
			and verify_field_float(verifier, VT_INTERP_KNEE_ANKLE, 4)
			and verify_end_table(verifier)
		)

	## Return true if impute_waist_from_chest_hip is present in the buffer, else false
	func impute_waist_from_chest_hip_is_present() -> bool:
		return get_field_offset( VT_IMPUTE_WAIST_FROM_CHEST_HIP )

	func impute_waist_from_chest_hip() -> float:
		var field_start: int = get_inline_field_start( VT_IMPUTE_WAIST_FROM_CHEST_HIP )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if impute_waist_from_chest_legs is present in the buffer, else false
	func impute_waist_from_chest_legs_is_present() -> bool:
		return get_field_offset( VT_IMPUTE_WAIST_FROM_CHEST_LEGS )

	func impute_waist_from_chest_legs() -> float:
		var field_start: int = get_inline_field_start( VT_IMPUTE_WAIST_FROM_CHEST_LEGS )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if impute_hip_from_chest_legs is present in the buffer, else false
	func impute_hip_from_chest_legs_is_present() -> bool:
		return get_field_offset( VT_IMPUTE_HIP_FROM_CHEST_LEGS )

	func impute_hip_from_chest_legs() -> float:
		var field_start: int = get_inline_field_start( VT_IMPUTE_HIP_FROM_CHEST_LEGS )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if impute_hip_from_waist_legs is present in the buffer, else false
	func impute_hip_from_waist_legs_is_present() -> bool:
		return get_field_offset( VT_IMPUTE_HIP_FROM_WAIST_LEGS )

	func impute_hip_from_waist_legs() -> float:
		var field_start: int = get_inline_field_start( VT_IMPUTE_HIP_FROM_WAIST_LEGS )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if interp_hip_legs is present in the buffer, else false
	func interp_hip_legs_is_present() -> bool:
		return get_field_offset( VT_INTERP_HIP_LEGS )

	func interp_hip_legs() -> float:
		var field_start: int = get_inline_field_start( VT_INTERP_HIP_LEGS )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if interp_knee_tracker_ankle is present in the buffer, else false
	func interp_knee_tracker_ankle_is_present() -> bool:
		return get_field_offset( VT_INTERP_KNEE_TRACKER_ANKLE )

	func interp_knee_tracker_ankle() -> float:
		var field_start: int = get_inline_field_start( VT_INTERP_KNEE_TRACKER_ANKLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if interp_knee_ankle is present in the buffer, else false
	func interp_knee_ankle_is_present() -> bool:
		return get_field_offset( VT_INTERP_KNEE_ANKLE )

	func interp_knee_ankle() -> float:
		var field_start: int = get_inline_field_start( VT_INTERP_KNEE_ANKLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for ModelRatios
class ModelRatiosBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the impute_waist_from_chest_hip field to the ModelRatios table
	func add_impute_waist_from_chest_hip( impute_waist_from_chest_hip: float ) -> void:
		fbb_.add_element_float_default( ModelRatios.VT_IMPUTE_WAIST_FROM_CHEST_HIP, impute_waist_from_chest_hip, 0.0 )

	## Add the impute_waist_from_chest_legs field to the ModelRatios table
	func add_impute_waist_from_chest_legs( impute_waist_from_chest_legs: float ) -> void:
		fbb_.add_element_float_default( ModelRatios.VT_IMPUTE_WAIST_FROM_CHEST_LEGS, impute_waist_from_chest_legs, 0.0 )

	## Add the impute_hip_from_chest_legs field to the ModelRatios table
	func add_impute_hip_from_chest_legs( impute_hip_from_chest_legs: float ) -> void:
		fbb_.add_element_float_default( ModelRatios.VT_IMPUTE_HIP_FROM_CHEST_LEGS, impute_hip_from_chest_legs, 0.0 )

	## Add the impute_hip_from_waist_legs field to the ModelRatios table
	func add_impute_hip_from_waist_legs( impute_hip_from_waist_legs: float ) -> void:
		fbb_.add_element_float_default( ModelRatios.VT_IMPUTE_HIP_FROM_WAIST_LEGS, impute_hip_from_waist_legs, 0.0 )

	## Add the interp_hip_legs field to the ModelRatios table
	func add_interp_hip_legs( interp_hip_legs: float ) -> void:
		fbb_.add_element_float_default( ModelRatios.VT_INTERP_HIP_LEGS, interp_hip_legs, 0.0 )

	## Add the interp_knee_tracker_ankle field to the ModelRatios table
	func add_interp_knee_tracker_ankle( interp_knee_tracker_ankle: float ) -> void:
		fbb_.add_element_float_default( ModelRatios.VT_INTERP_KNEE_TRACKER_ANKLE, interp_knee_tracker_ankle, 0.0 )

	## Add the interp_knee_ankle field to the ModelRatios table
	func add_interp_knee_ankle( interp_knee_ankle: float ) -> void:
		fbb_.add_element_float_default( ModelRatios.VT_INTERP_KNEE_ANKLE, interp_knee_ankle, 0.0 )

	## Finish building the ModelRatios table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ModelRatios table in one go using the provided [param _fbb]
static func create_ModelRatios( _fbb: FlatBufferBuilder,
		impute_waist_from_chest_hip: float,
		impute_waist_from_chest_legs: float,
		impute_hip_from_chest_legs: float,
		impute_hip_from_waist_legs: float,
		interp_hip_legs: float,
		interp_knee_tracker_ankle: float,
		interp_knee_ankle: float ) -> int :
	var builder: ModelRatiosBuilder = ModelRatiosBuilder.new( _fbb );
	builder.add_interp_knee_ankle( interp_knee_ankle );
	builder.add_interp_knee_tracker_ankle( interp_knee_tracker_ankle );
	builder.add_interp_hip_legs( interp_hip_legs );
	builder.add_impute_hip_from_waist_legs( impute_hip_from_waist_legs );
	builder.add_impute_hip_from_chest_legs( impute_hip_from_chest_legs );
	builder.add_impute_waist_from_chest_legs( impute_waist_from_chest_legs );
	builder.add_impute_waist_from_chest_hip( impute_waist_from_chest_hip );
	return builder.finish();

class LegTweaksSettings extends FlatBuffer:

	enum {
		VT_CORRECTION_STRENGTH = 4
	}

	## Initialize the ModelRatios with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ModelRatios data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_float(verifier, VT_CORRECTION_STRENGTH, 4)
			and verify_end_table(verifier)
		)

	## Return true if correction_strength is present in the buffer, else false
	func correction_strength_is_present() -> bool:
		return get_field_offset( VT_CORRECTION_STRENGTH )

	func correction_strength() -> float:
		var field_start: int = get_inline_field_start( VT_CORRECTION_STRENGTH )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for LegTweaksSettings
class LegTweaksSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the correction_strength field to the LegTweaksSettings table
	func add_correction_strength( correction_strength: float ) -> void:
		fbb_.add_element_float_default( LegTweaksSettings.VT_CORRECTION_STRENGTH, correction_strength, 0.0 )

	## Finish building the LegTweaksSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a LegTweaksSettings table in one go using the provided [param _fbb]
static func create_LegTweaksSettings( _fbb: FlatBufferBuilder,
		correction_strength: float ) -> int :
	var builder: LegTweaksSettingsBuilder = LegTweaksSettingsBuilder.new( _fbb );
	builder.add_correction_strength( correction_strength );
	return builder.finish();

class SkeletonHeight extends FlatBuffer:

	enum {
		VT_HMD_HEIGHT = 4,
		VT_FLOOR_HEIGHT = 6
	}

	## Initialize the LegTweaksSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the LegTweaksSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_float(verifier, VT_HMD_HEIGHT, 4)
			and verify_field_float(verifier, VT_FLOOR_HEIGHT, 4)
			and verify_end_table(verifier)
		)

	## Return true if hmd_height is present in the buffer, else false
	func hmd_height_is_present() -> bool:
		return get_field_offset( VT_HMD_HEIGHT )

	func hmd_height() -> float:
		var field_start: int = get_inline_field_start( VT_HMD_HEIGHT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if floor_height is present in the buffer, else false
	func floor_height_is_present() -> bool:
		return get_field_offset( VT_FLOOR_HEIGHT )

	func floor_height() -> float:
		var field_start: int = get_inline_field_start( VT_FLOOR_HEIGHT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for SkeletonHeight
class SkeletonHeightBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the hmd_height field to the SkeletonHeight table
	func add_hmd_height( hmd_height: float ) -> void:
		fbb_.add_element_float_default( SkeletonHeight.VT_HMD_HEIGHT, hmd_height, 0.0 )

	## Add the floor_height field to the SkeletonHeight table
	func add_floor_height( floor_height: float ) -> void:
		fbb_.add_element_float_default( SkeletonHeight.VT_FLOOR_HEIGHT, floor_height, 0.0 )

	## Finish building the SkeletonHeight table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SkeletonHeight table in one go using the provided [param _fbb]
static func create_SkeletonHeight( _fbb: FlatBufferBuilder,
		hmd_height: float,
		floor_height: float ) -> int :
	var builder: SkeletonHeightBuilder = SkeletonHeightBuilder.new( _fbb );
	builder.add_floor_height( floor_height );
	builder.add_hmd_height( hmd_height );
	return builder.finish();

class ModelSettings extends FlatBuffer:

	enum {
		VT_TOGGLES = 4,
		VT_RATIOS = 6,
		VT_LEG_TWEAKS = 8,
		VT_SKELETON_HEIGHT = 10
	}

	## Initialize the SkeletonHeight with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SkeletonHeight data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TOGGLES)
			and toggles().verify(verifier)
			and verify_offset(verifier, VT_RATIOS)
			and ratios().verify(verifier)
			and verify_offset(verifier, VT_LEG_TWEAKS)
			and leg_tweaks().verify(verifier)
			and verify_offset(verifier, VT_SKELETON_HEIGHT)
			and skeleton_height().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if toggles is present in the buffer, else false
	func toggles_is_present() -> bool:
		return get_field_offset( VT_TOGGLES )

	func toggles() -> SolarXR.ModelToggles:
		var field_start: int = get_offset_field_start( VT_TOGGLES )
		if not field_start: return null
		return SolarXR.ModelToggles.new( _fb_bytes, field_start )

	## Return true if ratios is present in the buffer, else false
	func ratios_is_present() -> bool:
		return get_field_offset( VT_RATIOS )

	func ratios() -> SolarXR.ModelRatios:
		var field_start: int = get_offset_field_start( VT_RATIOS )
		if not field_start: return null
		return SolarXR.ModelRatios.new( _fb_bytes, field_start )

	## Return true if leg_tweaks is present in the buffer, else false
	func leg_tweaks_is_present() -> bool:
		return get_field_offset( VT_LEG_TWEAKS )

	func leg_tweaks() -> SolarXR.LegTweaksSettings:
		var field_start: int = get_offset_field_start( VT_LEG_TWEAKS )
		if not field_start: return null
		return SolarXR.LegTweaksSettings.new( _fb_bytes, field_start )

	## Return true if skeleton_height is present in the buffer, else false
	func skeleton_height_is_present() -> bool:
		return get_field_offset( VT_SKELETON_HEIGHT )

	func skeleton_height() -> SolarXR.SkeletonHeight:
		var field_start: int = get_offset_field_start( VT_SKELETON_HEIGHT )
		if not field_start: return null
		return SolarXR.SkeletonHeight.new( _fb_bytes, field_start )


## Builder class for ModelSettings
class ModelSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the toggles field to the ModelSettings table
	func add_toggles( toggles_offset: int ) -> void:
		fbb_.add_offset( ModelSettings.VT_TOGGLES, toggles_offset )

	## Add the ratios field to the ModelSettings table
	func add_ratios( ratios_offset: int ) -> void:
		fbb_.add_offset( ModelSettings.VT_RATIOS, ratios_offset )

	## Add the leg_tweaks field to the ModelSettings table
	func add_leg_tweaks( leg_tweaks_offset: int ) -> void:
		fbb_.add_offset( ModelSettings.VT_LEG_TWEAKS, leg_tweaks_offset )

	## Add the skeleton_height field to the ModelSettings table
	func add_skeleton_height( skeleton_height_offset: int ) -> void:
		fbb_.add_offset( ModelSettings.VT_SKELETON_HEIGHT, skeleton_height_offset )

	## Finish building the ModelSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ModelSettings table in one go using the provided [param _fbb]
static func create_ModelSettings( _fbb: FlatBufferBuilder,
		toggles: int,
		ratios: int,
		leg_tweaks: int,
		skeleton_height: int ) -> int :
	var builder: ModelSettingsBuilder = ModelSettingsBuilder.new( _fbb );
	builder.add_skeleton_height( skeleton_height );
	builder.add_leg_tweaks( leg_tweaks );
	builder.add_ratios( ratios );
	builder.add_toggles( toggles );
	return builder.finish();

class Keybind extends FlatBuffer:

	enum {
		VT_KEYBIND_ID = 4,
		VT_KEYBIND_NAME_ID = 6,
		VT_KEYBIND_VALUE = 8,
		VT_KEYBIND_DELAY = 10
	}

	## Initialize the ModelSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ModelSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_KEYBIND_ID, 1)
			and verify_offset(verifier, VT_KEYBIND_NAME_ID)
			and verify_string( verifier, VT_KEYBIND_NAME_ID )
			and verify_offset(verifier, VT_KEYBIND_VALUE)
			and verify_string( verifier, VT_KEYBIND_VALUE )
			and verify_field_float(verifier, VT_KEYBIND_DELAY, 4)
			and verify_end_table(verifier)
		)

	## Return true if keybind_id is present in the buffer, else false
	func keybind_id_is_present() -> bool:
		return get_field_offset( VT_KEYBIND_ID )

	func keybind_id() -> KeybindId:
		var field_start: int = get_inline_field_start( VT_KEYBIND_ID )
		if not field_start: return 0 as KeybindId
		var decoded: KeybindId = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if keybind_name_id is present in the buffer, else false
	func keybind_name_id_is_present() -> bool:
		return get_field_offset( VT_KEYBIND_NAME_ID )

	func keybind_name_id() -> String:
		var field_start: int = get_offset_field_start( VT_KEYBIND_NAME_ID )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if keybind_value is present in the buffer, else false
	func keybind_value_is_present() -> bool:
		return get_field_offset( VT_KEYBIND_VALUE )

	func keybind_value() -> String:
		var field_start: int = get_offset_field_start( VT_KEYBIND_VALUE )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if keybind_delay is present in the buffer, else false
	func keybind_delay_is_present() -> bool:
		return get_field_offset( VT_KEYBIND_DELAY )

	func keybind_delay() -> float:
		var field_start: int = get_inline_field_start( VT_KEYBIND_DELAY )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for Keybind
class KeybindBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the keybind_id field to the Keybind table
	func add_keybind_id( keybind_id: KeybindId ) -> void:
		fbb_.add_element_ubyte( Keybind.VT_KEYBIND_ID, keybind_id )

	## Add the keybind_name_id field to the Keybind table
	func add_keybind_name_id( keybind_name_id_offset: int ) -> void:
		fbb_.add_offset( Keybind.VT_KEYBIND_NAME_ID, keybind_name_id_offset )

	## Add the keybind_value field to the Keybind table
	func add_keybind_value( keybind_value_offset: int ) -> void:
		fbb_.add_offset( Keybind.VT_KEYBIND_VALUE, keybind_value_offset )

	## Add the keybind_delay field to the Keybind table
	func add_keybind_delay( keybind_delay: float ) -> void:
		fbb_.add_element_float_default( Keybind.VT_KEYBIND_DELAY, keybind_delay, 0.0 )

	## Finish building the Keybind table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a Keybind table in one go using the provided [param _fbb]
static func create_Keybind( _fbb: FlatBufferBuilder,
		keybind_id: KeybindId,
		keybind_name_id: int,
		keybind_value: int,
		keybind_delay: float ) -> int :
	var builder: KeybindBuilder = KeybindBuilder.new( _fbb );
	builder.add_keybind_delay( keybind_delay );
	builder.add_keybind_value( keybind_value );
	builder.add_keybind_name_id( keybind_name_id );
	builder.add_keybind_id( keybind_id );
	return builder.finish();

class KeybindRequest extends FlatBuffer:

	enum {
		VT_KEYBIND_ID = 4
	}

	## Initialize the Keybind with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the Keybind data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_KEYBIND_ID, 1)
			and verify_end_table(verifier)
		)

	## Return true if keybind_id is present in the buffer, else false
	func keybind_id_is_present() -> bool:
		return get_field_offset( VT_KEYBIND_ID )

	func keybind_id() -> KeybindId:
		var field_start: int = get_inline_field_start( VT_KEYBIND_ID )
		if not field_start: return 0 as KeybindId
		var decoded: KeybindId = _fb_bytes.decode_u8( field_start )
		return decoded


## Builder class for KeybindRequest
class KeybindRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the keybind_id field to the KeybindRequest table
	func add_keybind_id( keybind_id: KeybindId ) -> void:
		fbb_.add_element_ubyte( KeybindRequest.VT_KEYBIND_ID, keybind_id )

	## Finish building the KeybindRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a KeybindRequest table in one go using the provided [param _fbb]
static func create_KeybindRequest( _fbb: FlatBufferBuilder,
		keybind_id: KeybindId ) -> int :
	var builder: KeybindRequestBuilder = KeybindRequestBuilder.new( _fbb );
	builder.add_keybind_id( keybind_id );
	return builder.finish();

class KeybindResponse extends FlatBuffer:

	enum {
		VT_KEYBIND = 4,
		VT_DEFAULT_KEYBINDS = 6
	}

	## Initialize the KeybindRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the KeybindRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_KEYBIND)
			and verify_vector_u32(verifier, VT_KEYBIND)
			and keybind_verify(verifier)
			and verify_offset(verifier, VT_DEFAULT_KEYBINDS)
			and verify_vector_u32(verifier, VT_DEFAULT_KEYBINDS)
			and default_keybinds_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if keybind is present in the buffer, else false
	func keybind_is_present() -> bool:
		return get_field_offset( VT_KEYBIND )

	func keybind_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.Keybind.new()
		for i in keybind_size():
			if not keybind_at(i, tmp).verify(verifier):
				return false
		return true

	func keybind_size() -> int:
		var array_start: int = get_offset_field_start( VT_KEYBIND )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func keybind_at( idx: int, into: Keybind = null ) -> Keybind:
		var field_start: int = get_offset_field_start( VT_KEYBIND )
		assert(field_start, 'Field "keybind" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.Keybind.new( _fb_bytes, element_pos + element_offset )

	func keybind() -> Array:
		var array_start: int = get_offset_field_start( VT_KEYBIND )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.Keybind.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array

	## Return true if default_keybinds is present in the buffer, else false
	func default_keybinds_is_present() -> bool:
		return get_field_offset( VT_DEFAULT_KEYBINDS )

	func default_keybinds_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.Keybind.new()
		for i in default_keybinds_size():
			if not default_keybinds_at(i, tmp).verify(verifier):
				return false
		return true

	func default_keybinds_size() -> int:
		var array_start: int = get_offset_field_start( VT_DEFAULT_KEYBINDS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func default_keybinds_at( idx: int, into: Keybind = null ) -> Keybind:
		var field_start: int = get_offset_field_start( VT_DEFAULT_KEYBINDS )
		assert(field_start, 'Field "default_keybinds" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.Keybind.new( _fb_bytes, element_pos + element_offset )

	func default_keybinds() -> Array:
		var array_start: int = get_offset_field_start( VT_DEFAULT_KEYBINDS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.Keybind.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for KeybindResponse
class KeybindResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the keybind field to the KeybindResponse table
	func add_keybind( keybind_offset: int ) -> void:
		fbb_.add_offset( KeybindResponse.VT_KEYBIND, keybind_offset )

	## Add the default_keybinds field to the KeybindResponse table
	func add_default_keybinds( default_keybinds_offset: int ) -> void:
		fbb_.add_offset( KeybindResponse.VT_DEFAULT_KEYBINDS, default_keybinds_offset )

	## Finish building the KeybindResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a KeybindResponse table in one go using the provided [param _fbb]
static func create_KeybindResponse( _fbb: FlatBufferBuilder,
		keybind: int,
		default_keybinds: int ) -> int :
	var builder: KeybindResponseBuilder = KeybindResponseBuilder.new( _fbb );
	builder.add_default_keybinds( default_keybinds );
	builder.add_keybind( keybind );
	return builder.finish();

class ChangeKeybindRequest extends FlatBuffer:

	enum {
		VT_KEYBIND = 4
	}

	## Initialize the KeybindResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the KeybindResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_KEYBIND)
			and keybind().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if keybind is present in the buffer, else false
	func keybind_is_present() -> bool:
		return get_field_offset( VT_KEYBIND )

	func keybind() -> SolarXR.Keybind:
		var field_start: int = get_offset_field_start( VT_KEYBIND )
		if not field_start: return null
		return SolarXR.Keybind.new( _fb_bytes, field_start )


## Builder class for ChangeKeybindRequest
class ChangeKeybindRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the keybind field to the ChangeKeybindRequest table
	func add_keybind( keybind_offset: int ) -> void:
		fbb_.add_offset( ChangeKeybindRequest.VT_KEYBIND, keybind_offset )

	## Finish building the ChangeKeybindRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ChangeKeybindRequest table in one go using the provided [param _fbb]
static func create_ChangeKeybindRequest( _fbb: FlatBufferBuilder,
		keybind: int ) -> int :
	var builder: ChangeKeybindRequestBuilder = ChangeKeybindRequestBuilder.new( _fbb );
	builder.add_keybind( keybind );
	return builder.finish();

class OpenUriRequest extends FlatBuffer:


	## Initialize the ChangeKeybindRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ChangeKeybindRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for OpenUriRequest
class OpenUriRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the OpenUriRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OpenUriRequest table in one go using the provided [param _fbb]
static func create_OpenUriRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: OpenUriRequestBuilder = OpenUriRequestBuilder.new( _fbb );
	return builder.finish();

class OpenUriResponse extends FlatBuffer:

	enum {
		VT_SUCCESS = 4
	}

	## Initialize the OpenUriRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OpenUriRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_SUCCESS, 1)
			and verify_end_table(verifier)
		)

	## Return true if success is present in the buffer, else false
	func success_is_present() -> bool:
		return get_field_offset( VT_SUCCESS )

	func success() -> bool:
		var field_start: int = get_inline_field_start( VT_SUCCESS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for OpenUriResponse
class OpenUriResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the success field to the OpenUriResponse table
	func add_success( success: bool ) -> void:
		fbb_.add_element_bool_default( OpenUriResponse.VT_SUCCESS, success, 0 )

	## Finish building the OpenUriResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OpenUriResponse table in one go using the provided [param _fbb]
static func create_OpenUriResponse( _fbb: FlatBufferBuilder,
		success: bool ) -> int :
	var builder: OpenUriResponseBuilder = OpenUriResponseBuilder.new( _fbb );
	builder.add_success( success );
	return builder.finish();

class RpcMessageHeader extends FlatBuffer:

	enum {
		VT_TX_ID = 4,
		VT_MESSAGE_TYPE = 6,
		VT_MESSAGE = 8
	}

	## Initialize the OpenUriResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OpenUriResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_TX_ID, 4)
			and verify_field_u8(verifier, VT_MESSAGE_TYPE, 1)
			and verify_offset(verifier, VT_MESSAGE)
			and SolarXR.rpc_message_verify(verifier, message(), message_type())
			and verify_end_table(verifier)
		)

	## Return true if tx_id is present in the buffer, else false
	func tx_id_is_present() -> bool:
		return get_field_offset( VT_TX_ID )

	func tx_id() -> TransactionId:
		var field_start: int = get_inline_field_start( VT_TX_ID )
		if not field_start: return null
		return SolarXR.TransactionId.new( _fb_bytes, field_start )

	## Return true if message is present in the buffer, else false
	func message_is_present() -> bool:
		return get_field_offset( VT_MESSAGE )

	## Get the union type of the message_type field
	func message_type() -> RpcMessage:
		var field_start: int = get_inline_field_start( VT_MESSAGE_TYPE )
		if not field_start: return 0 as RpcMessage
		var decoded: RpcMessage = _fb_bytes.decode_u8( field_start )
		return decoded

	func message() -> Variant:
		var field_start: int = get_offset_field_start( VT_MESSAGE )
		if not field_start: return null
		match( message_type() ):
			SolarXR.RpcMessage.HEARTBEAT_REQUEST:
				return SolarXR.HeartbeatRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.HEARTBEAT_RESPONSE:
				return SolarXR.HeartbeatResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.RESET_REQUEST:
				return SolarXR.ResetRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.RESET_RESPONSE:
				return SolarXR.ResetResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.ASSIGN_TRACKER_REQUEST:
				return SolarXR.AssignTrackerRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SETTINGS_REQUEST:
				return SolarXR.SettingsRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SETTINGS_RESPONSE:
				return SolarXR.SettingsResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.CHANGE_SETTINGS_REQUEST:
				return SolarXR.ChangeSettingsRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.CLEAR_DRIFT_COMPENSATION_REQUEST:
				return SolarXR.ClearDriftCompensationRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.RECORD_BVHREQUEST:
				return SolarXR.RecordBVHRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.RECORD_BVHSTATUS:
				return SolarXR.RecordBVHStatus.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SKELETON_CONFIG_REQUEST:
				return SolarXR.SkeletonConfigRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.CHANGE_SKELETON_CONFIG_REQUEST:
				return SolarXR.ChangeSkeletonConfigRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SKELETON_RESET_ALL_REQUEST:
				return SolarXR.SkeletonResetAllRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SKELETON_CONFIG_RESPONSE:
				return SolarXR.SkeletonConfigResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.OPEN_SERIAL_REQUEST:
				return SolarXR.OpenSerialRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.CLOSE_SERIAL_REQUEST:
				return SolarXR.CloseSerialRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SET_WIFI_REQUEST:
				return SolarXR.SetWifiRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERIAL_UPDATE_RESPONSE:
				return SolarXR.SerialUpdateResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.AUTO_BONE_PROCESS_REQUEST:
				return SolarXR.AutoBoneProcessRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.AUTO_BONE_PROCESS_STATUS_RESPONSE:
				return SolarXR.AutoBoneProcessStatusResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.AUTO_BONE_EPOCH_RESPONSE:
				return SolarXR.AutoBoneEpochResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.OVERLAY_DISPLAY_MODE_REQUEST:
				return SolarXR.OverlayDisplayModeRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.OVERLAY_DISPLAY_MODE_CHANGE_REQUEST:
				return SolarXR.OverlayDisplayModeChangeRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.OVERLAY_DISPLAY_MODE_RESPONSE:
				return SolarXR.OverlayDisplayModeResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERIAL_TRACKER_REBOOT_REQUEST:
				return SolarXR.SerialTrackerRebootRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERIAL_TRACKER_GET_INFO_REQUEST:
				return SolarXR.SerialTrackerGetInfoRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERIAL_TRACKER_FACTORY_RESET_REQUEST:
				return SolarXR.SerialTrackerFactoryResetRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERIAL_DEVICES_REQUEST:
				return SolarXR.SerialDevicesRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERIAL_DEVICES_RESPONSE:
				return SolarXR.SerialDevicesResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.NEW_SERIAL_DEVICE_RESPONSE:
				return SolarXR.NewSerialDeviceResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.START_WIFI_PROVISIONING_REQUEST:
				return SolarXR.StartWifiProvisioningRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.STOP_WIFI_PROVISIONING_REQUEST:
				return SolarXR.StopWifiProvisioningRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.WIFI_PROVISIONING_STATUS_RESPONSE:
				return SolarXR.WifiProvisioningStatusResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERVER_INFOS_REQUEST:
				return SolarXR.ServerInfosRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERVER_INFOS_RESPONSE:
				return SolarXR.ServerInfosResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.LEG_TWEAKS_TMP_CHANGE:
				return SolarXR.LegTweaksTmpChange.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.LEG_TWEAKS_TMP_CLEAR:
				return SolarXR.LegTweaksTmpClear.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.TAP_DETECTION_SETUP_NOTIFICATION:
				return SolarXR.TapDetectionSetupNotification.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SET_PAUSE_TRACKING_REQUEST:
				return SolarXR.SetPauseTrackingRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.STATUS_SYSTEM_REQUEST:
				return SolarXR.StatusSystemRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.STATUS_SYSTEM_RESPONSE:
				return SolarXR.StatusSystemResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.STATUS_SYSTEM_UPDATE:
				return SolarXR.StatusSystemUpdate.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.STATUS_SYSTEM_FIXED:
				return SolarXR.StatusSystemFixed.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.CLEAR_MOUNTING_RESET_REQUEST:
				return SolarXR.ClearMountingResetRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.HEIGHT_REQUEST:
				return SolarXR.HeightRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.HEIGHT_RESPONSE:
				return SolarXR.HeightResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.AUTO_BONE_APPLY_REQUEST:
				return SolarXR.AutoBoneApplyRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.AUTO_BONE_STOP_RECORDING_REQUEST:
				return SolarXR.AutoBoneStopRecordingRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.AUTO_BONE_CANCEL_RECORDING_REQUEST:
				return SolarXR.AutoBoneCancelRecordingRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SAVE_FILE_NOTIFICATION:
				return SolarXR.SaveFileNotification.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.TRACKING_PAUSE_STATE_REQUEST:
				return SolarXR.TrackingPauseStateRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.TRACKING_PAUSE_STATE_RESPONSE:
				return SolarXR.TrackingPauseStateResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERIAL_TRACKER_GET_WIFI_SCAN_REQUEST:
				return SolarXR.SerialTrackerGetWifiScanRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.UNKNOWN_DEVICE_HANDSHAKE_NOTIFICATION:
				return SolarXR.UnknownDeviceHandshakeNotification.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.ADD_UNKNOWN_DEVICE_REQUEST:
				return SolarXR.AddUnknownDeviceRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.FORGET_DEVICE_REQUEST:
				return SolarXR.ForgetDeviceRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.FIRMWARE_UPDATE_REQUEST:
				return SolarXR.FirmwareUpdateRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.FIRMWARE_UPDATE_STATUS_RESPONSE:
				return SolarXR.FirmwareUpdateStatusResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.FIRMWARE_UPDATE_STOP_QUEUES_REQUEST:
				return SolarXR.FirmwareUpdateStopQueuesRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SETTINGS_RESET_REQUEST:
				return SolarXR.SettingsResetRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.MAG_TOGGLE_REQUEST:
				return SolarXR.MagToggleRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.MAG_TOGGLE_RESPONSE:
				return SolarXR.MagToggleResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.CHANGE_MAG_TOGGLE_REQUEST:
				return SolarXR.ChangeMagToggleRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.RECORD_BVHSTATUS_REQUEST:
				return SolarXR.RecordBVHStatusRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.VRCCONFIG_STATE_REQUEST:
				return SolarXR.VRCConfigStateRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.VRCCONFIG_STATE_CHANGE_RESPONSE:
				return SolarXR.VRCConfigStateChangeResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.ENABLE_STAY_ALIGNED_REQUEST:
				return SolarXR.EnableStayAlignedRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.DETECT_STAY_ALIGNED_RELAXED_POSE_REQUEST:
				return SolarXR.DetectStayAlignedRelaxedPoseRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.RESET_STAY_ALIGNED_RELAXED_POSE_REQUEST:
				return SolarXR.ResetStayAlignedRelaxedPoseRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.SERIAL_TRACKER_CUSTOM_COMMAND_REQUEST:
				return SolarXR.SerialTrackerCustomCommandRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.VRCCONFIG_SETTING_TOGGLE_MUTE:
				return SolarXR.VRCConfigSettingToggleMute.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.TRACKING_CHECKLIST_REQUEST:
				return SolarXR.TrackingChecklistRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.TRACKING_CHECKLIST_RESPONSE:
				return SolarXR.TrackingChecklistResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.IGNORE_TRACKING_CHECKLIST_STEP_REQUEST:
				return SolarXR.IgnoreTrackingChecklistStepRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.START_USER_HEIGHT_CALIBRATION:
				return SolarXR.StartUserHeightCalibration.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.CANCEL_USER_HEIGHT_CALIBRATION:
				return SolarXR.CancelUserHeightCalibration.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.USER_HEIGHT_RECORDING_STATUS_RESPONSE:
				return SolarXR.UserHeightRecordingStatusResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.KEYBIND_REQUEST:
				return SolarXR.KeybindRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.CHANGE_KEYBIND_REQUEST:
				return SolarXR.ChangeKeybindRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.KEYBIND_RESPONSE:
				return SolarXR.KeybindResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.INSTALLED_INFO_REQUEST:
				return SolarXR.InstalledInfoRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.INSTALLED_INFO_RESPONSE:
				return SolarXR.InstalledInfoResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.OPEN_URI_REQUEST:
				return SolarXR.OpenUriRequest.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.OPEN_URI_RESPONSE:
				return SolarXR.OpenUriResponse.new( _fb_bytes, field_start )
			SolarXR.RpcMessage.ENABLE_STEAM_VRDRIVER_REQUEST:
				return SolarXR.EnableSteamVRDriverRequest.new( _fb_bytes, field_start )
		return null


## Builder class for RpcMessageHeader
class RpcMessageHeaderBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tx_id field to the RpcMessageHeader table
	func add_tx_id( tx_id: TransactionId ) -> void:
		fbb_.add_bytes( RpcMessageHeader.VT_TX_ID, tx_id._fb_bytes ) 

	## Add the message_type field to the RpcMessageHeader table
	func add_message_type( message_type: RpcMessage ) -> void:
		fbb_.add_element_ubyte( RpcMessageHeader.VT_MESSAGE_TYPE, message_type )

	## Add the message field to the RpcMessageHeader table
	func add_message( message_offset: int ) -> void:
		fbb_.add_offset( RpcMessageHeader.VT_MESSAGE, message_offset )

	## Finish building the RpcMessageHeader table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a RpcMessageHeader table in one go using the provided [param _fbb]
static func create_RpcMessageHeader( _fbb: FlatBufferBuilder,
		tx_id: TransactionId,
		message_type: RpcMessage,
		message: int ) -> int :
	var builder: RpcMessageHeaderBuilder = RpcMessageHeaderBuilder.new( _fbb );
	builder.add_message( message );
	builder.add_tx_id( tx_id );
	builder.add_message_type( message_type );
	return builder.finish();

class InstalledInfoRequest extends FlatBuffer:


	## Initialize the RpcMessageHeader with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the RpcMessageHeader data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for InstalledInfoRequest
class InstalledInfoRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the InstalledInfoRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a InstalledInfoRequest table in one go using the provided [param _fbb]
static func create_InstalledInfoRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: InstalledInfoRequestBuilder = InstalledInfoRequestBuilder.new( _fbb );
	return builder.finish();

class InstalledInfoResponse extends FlatBuffer:

	enum {
		VT_ISUDEVINSTALLED = 4,
		VT_ISWAYLAND = 6
	}

	## Initialize the InstalledInfoRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the InstalledInfoRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_ISUDEVINSTALLED, 1)
			and verify_field_u8(verifier, VT_ISWAYLAND, 1)
			and verify_end_table(verifier)
		)

	## Return true if isUdevInstalled is present in the buffer, else false
	func isUdevInstalled_is_present() -> bool:
		return get_field_offset( VT_ISUDEVINSTALLED )

	func isUdevInstalled() -> bool:
		var field_start: int = get_inline_field_start( VT_ISUDEVINSTALLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if isWayland is present in the buffer, else false
	func isWayland_is_present() -> bool:
		return get_field_offset( VT_ISWAYLAND )

	func isWayland() -> bool:
		var field_start: int = get_inline_field_start( VT_ISWAYLAND )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for InstalledInfoResponse
class InstalledInfoResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the isUdevInstalled field to the InstalledInfoResponse table
	func add_isUdevInstalled( isUdevInstalled: bool ) -> void:
		fbb_.add_element_bool_default( InstalledInfoResponse.VT_ISUDEVINSTALLED, isUdevInstalled, 0 )

	## Add the isWayland field to the InstalledInfoResponse table
	func add_isWayland( isWayland: bool ) -> void:
		fbb_.add_element_bool_default( InstalledInfoResponse.VT_ISWAYLAND, isWayland, 0 )

	## Finish building the InstalledInfoResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a InstalledInfoResponse table in one go using the provided [param _fbb]
static func create_InstalledInfoResponse( _fbb: FlatBufferBuilder,
		isUdevInstalled: bool,
		isWayland: bool ) -> int :
	var builder: InstalledInfoResponseBuilder = InstalledInfoResponseBuilder.new( _fbb );
	builder.add_isWayland( isWayland );
	builder.add_isUdevInstalled( isUdevInstalled );
	return builder.finish();

class HeartbeatRequest extends FlatBuffer:


	## Initialize the InstalledInfoResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the InstalledInfoResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for HeartbeatRequest
class HeartbeatRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the HeartbeatRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a HeartbeatRequest table in one go using the provided [param _fbb]
static func create_HeartbeatRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: HeartbeatRequestBuilder = HeartbeatRequestBuilder.new( _fbb );
	return builder.finish();

class HeartbeatResponse extends FlatBuffer:


	## Initialize the HeartbeatRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the HeartbeatRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for HeartbeatResponse
class HeartbeatResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the HeartbeatResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a HeartbeatResponse table in one go using the provided [param _fbb]
static func create_HeartbeatResponse( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: HeartbeatResponseBuilder = HeartbeatResponseBuilder.new( _fbb );
	return builder.finish();

class ResetRequest extends FlatBuffer:

	enum {
		VT_RESET_TYPE = 4,
		VT_BODY_PARTS = 6,
		VT_DELAY = 8
	}

	## Initialize the HeartbeatResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the HeartbeatResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_RESET_TYPE, 1)
			and verify_offset(verifier, VT_BODY_PARTS)
			and verify_vector_u8(verifier, VT_BODY_PARTS)
			and verify_field_float(verifier, VT_DELAY, 4)
			and verify_end_table(verifier)
		)

	## Return true if reset_type is present in the buffer, else false
	func reset_type_is_present() -> bool:
		return get_field_offset( VT_RESET_TYPE )

	func reset_type() -> ResetType:
		var field_start: int = get_inline_field_start( VT_RESET_TYPE )
		if not field_start: return 0 as ResetType
		var decoded: ResetType = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if body_parts is present in the buffer, else false
	func body_parts_is_present() -> bool:
		return get_field_offset( VT_BODY_PARTS )

	func body_parts_size() -> int:
		var array_start: int = get_offset_field_start( VT_BODY_PARTS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	## Access elements of body_parts by [param index]
	func body_parts_at( index: int ) -> BodyPart:
		var array_start: int = get_offset_field_start( VT_BODY_PARTS )
		assert(array_start, 'access to invalid vector of enum')
		array_start += 4
		return _fb_bytes[array_start + index]

	## Decode and return all elements of body_parts as an [PackedByteArray]
	func body_parts() -> PackedByteArray:
		var array_start: int = get_offset_field_start( VT_BODY_PARTS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		return _fb_bytes.slice( array_start, array_start + array_size )

	## Return true if delay is present in the buffer, else false
	func delay_is_present() -> bool:
		return get_field_offset( VT_DELAY )

	func delay() -> float:
		var field_start: int = get_inline_field_start( VT_DELAY )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for ResetRequest
class ResetRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the reset_type field to the ResetRequest table
	func add_reset_type( reset_type: ResetType ) -> void:
		fbb_.add_element_ubyte( ResetRequest.VT_RESET_TYPE, reset_type )

	## Add the body_parts field to the ResetRequest table
	func add_body_parts( body_parts_offset: int ) -> void:
		fbb_.add_offset( ResetRequest.VT_BODY_PARTS, body_parts_offset )

	## Add the delay field to the ResetRequest table
	func add_delay( delay: float ) -> void:
		fbb_.add_element_float_default( ResetRequest.VT_DELAY, delay, 0.0 )

	## Finish building the ResetRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ResetRequest table in one go using the provided [param _fbb]
static func create_ResetRequest( _fbb: FlatBufferBuilder,
		reset_type: ResetType,
		body_parts: int,
		delay: float ) -> int :
	var builder: ResetRequestBuilder = ResetRequestBuilder.new( _fbb );
	builder.add_delay( delay );
	builder.add_body_parts( body_parts );
	builder.add_reset_type( reset_type );
	return builder.finish();

class ResetResponse extends FlatBuffer:

	enum {
		VT_RESET_TYPE = 4,
		VT_STATUS = 6,
		VT_BODY_PARTS = 8,
		VT_PROGRESS = 10,
		VT_DURATION = 12
	}

	## Initialize the ResetRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ResetRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_RESET_TYPE, 1)
			and verify_field_u8(verifier, VT_STATUS, 1)
			and verify_offset(verifier, VT_BODY_PARTS)
			and verify_vector_u8(verifier, VT_BODY_PARTS)
			and verify_field_s32(verifier, VT_PROGRESS, 4)
			and verify_field_s32(verifier, VT_DURATION, 4)
			and verify_end_table(verifier)
		)

	## Return true if reset_type is present in the buffer, else false
	func reset_type_is_present() -> bool:
		return get_field_offset( VT_RESET_TYPE )

	func reset_type() -> ResetType:
		var field_start: int = get_inline_field_start( VT_RESET_TYPE )
		if not field_start: return 0 as ResetType
		var decoded: ResetType = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if status is present in the buffer, else false
	func status_is_present() -> bool:
		return get_field_offset( VT_STATUS )

	func status() -> ResetStatus:
		var field_start: int = get_inline_field_start( VT_STATUS )
		if not field_start: return 0 as ResetStatus
		var decoded: ResetStatus = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if body_parts is present in the buffer, else false
	func body_parts_is_present() -> bool:
		return get_field_offset( VT_BODY_PARTS )

	func body_parts_size() -> int:
		var array_start: int = get_offset_field_start( VT_BODY_PARTS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	## Access elements of body_parts by [param index]
	func body_parts_at( index: int ) -> BodyPart:
		var array_start: int = get_offset_field_start( VT_BODY_PARTS )
		assert(array_start, 'access to invalid vector of enum')
		array_start += 4
		return _fb_bytes[array_start + index]

	## Decode and return all elements of body_parts as an [PackedByteArray]
	func body_parts() -> PackedByteArray:
		var array_start: int = get_offset_field_start( VT_BODY_PARTS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		return _fb_bytes.slice( array_start, array_start + array_size )

	## Return true if progress is present in the buffer, else false
	func progress_is_present() -> bool:
		return get_field_offset( VT_PROGRESS )

	func progress() -> int:
		var field_start: int = get_inline_field_start( VT_PROGRESS )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )

	## Return true if duration is present in the buffer, else false
	func duration_is_present() -> bool:
		return get_field_offset( VT_DURATION )

	func duration() -> int:
		var field_start: int = get_inline_field_start( VT_DURATION )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )


## Builder class for ResetResponse
class ResetResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the reset_type field to the ResetResponse table
	func add_reset_type( reset_type: ResetType ) -> void:
		fbb_.add_element_ubyte( ResetResponse.VT_RESET_TYPE, reset_type )

	## Add the status field to the ResetResponse table
	func add_status( status: ResetStatus ) -> void:
		fbb_.add_element_ubyte( ResetResponse.VT_STATUS, status )

	## Add the body_parts field to the ResetResponse table
	func add_body_parts( body_parts_offset: int ) -> void:
		fbb_.add_offset( ResetResponse.VT_BODY_PARTS, body_parts_offset )

	## Add the progress field to the ResetResponse table
	func add_progress( progress: int ) -> void:
		fbb_.add_element_int_default( ResetResponse.VT_PROGRESS, progress, 0 )

	## Add the duration field to the ResetResponse table
	func add_duration( duration: int ) -> void:
		fbb_.add_element_int_default( ResetResponse.VT_DURATION, duration, 0 )

	## Finish building the ResetResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ResetResponse table in one go using the provided [param _fbb]
static func create_ResetResponse( _fbb: FlatBufferBuilder,
		reset_type: ResetType,
		status: ResetStatus,
		body_parts: int,
		progress: int,
		duration: int ) -> int :
	var builder: ResetResponseBuilder = ResetResponseBuilder.new( _fbb );
	builder.add_duration( duration );
	builder.add_progress( progress );
	builder.add_body_parts( body_parts );
	builder.add_status( status );
	builder.add_reset_type( reset_type );
	return builder.finish();

class AssignTrackerRequest extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4,
		VT_BODY_POSITION = 6,
		VT_MOUNTING_ORIENTATION = 8,
		VT_DISPLAY_NAME = 10,
		VT_ALLOW_DRIFT_COMPENSATION = 12
	}

	## Initialize the ResetResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ResetResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and tracker_id().verify(verifier)
			and verify_field_u8(verifier, VT_BODY_POSITION, 1)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_MOUNTING_ORIENTATION, 4)
			and verify_offset(verifier, VT_DISPLAY_NAME)
			and verify_string( verifier, VT_DISPLAY_NAME )
			and verify_field_u8(verifier, VT_ALLOW_DRIFT_COMPENSATION, 1)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id() -> SolarXR.TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not field_start: return null
		return SolarXR.TrackerId.new( _fb_bytes, field_start )

	## Return true if body_position is present in the buffer, else false
	func body_position_is_present() -> bool:
		return get_field_offset( VT_BODY_POSITION )

	func body_position() -> BodyPart:
		var field_start: int = get_inline_field_start( VT_BODY_POSITION )
		if not field_start: return 0 as BodyPart
		var decoded: BodyPart = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if mounting_orientation is present in the buffer, else false
	func mounting_orientation_is_present() -> bool:
		return get_field_offset( VT_MOUNTING_ORIENTATION )

	func mounting_orientation() -> Quat:
		var field_start: int = get_inline_field_start( VT_MOUNTING_ORIENTATION )
		if not field_start: return null
		return SolarXR.Quat.new( _fb_bytes, field_start )

	## Return true if display_name is present in the buffer, else false
	func display_name_is_present() -> bool:
		return get_field_offset( VT_DISPLAY_NAME )

	func display_name() -> String:
		var field_start: int = get_offset_field_start( VT_DISPLAY_NAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if allow_drift_compensation is present in the buffer, else false
	func allow_drift_compensation_is_present() -> bool:
		return get_field_offset( VT_ALLOW_DRIFT_COMPENSATION )

	func allow_drift_compensation() -> bool:
		var field_start: int = get_inline_field_start( VT_ALLOW_DRIFT_COMPENSATION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for AssignTrackerRequest
class AssignTrackerRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the AssignTrackerRequest table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( AssignTrackerRequest.VT_TRACKER_ID, tracker_id_offset )

	## Add the body_position field to the AssignTrackerRequest table
	func add_body_position( body_position: BodyPart ) -> void:
		fbb_.add_element_ubyte( AssignTrackerRequest.VT_BODY_POSITION, body_position )

	## Add the mounting_orientation field to the AssignTrackerRequest table
	func add_mounting_orientation( mounting_orientation: Quat ) -> void:
		fbb_.add_bytes( AssignTrackerRequest.VT_MOUNTING_ORIENTATION, mounting_orientation._fb_bytes ) 

	## Add the display_name field to the AssignTrackerRequest table
	func add_display_name( display_name_offset: int ) -> void:
		fbb_.add_offset( AssignTrackerRequest.VT_DISPLAY_NAME, display_name_offset )

	## Add the allow_drift_compensation field to the AssignTrackerRequest table
	func add_allow_drift_compensation( allow_drift_compensation: bool ) -> void:
		fbb_.add_element_bool_default( AssignTrackerRequest.VT_ALLOW_DRIFT_COMPENSATION, allow_drift_compensation, 0 )

	## Finish building the AssignTrackerRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a AssignTrackerRequest table in one go using the provided [param _fbb]
static func create_AssignTrackerRequest( _fbb: FlatBufferBuilder,
		tracker_id: int,
		body_position: BodyPart,
		mounting_orientation: Quat,
		display_name: int,
		allow_drift_compensation: bool ) -> int :
	var builder: AssignTrackerRequestBuilder = AssignTrackerRequestBuilder.new( _fbb );
	builder.add_display_name( display_name );
	builder.add_mounting_orientation( mounting_orientation );
	builder.add_tracker_id( tracker_id );
	builder.add_allow_drift_compensation( allow_drift_compensation );
	builder.add_body_position( body_position );
	return builder.finish();

class ClearDriftCompensationRequest extends FlatBuffer:


	## Initialize the AssignTrackerRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the AssignTrackerRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for ClearDriftCompensationRequest
class ClearDriftCompensationRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the ClearDriftCompensationRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ClearDriftCompensationRequest table in one go using the provided [param _fbb]
static func create_ClearDriftCompensationRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: ClearDriftCompensationRequestBuilder = ClearDriftCompensationRequestBuilder.new( _fbb );
	return builder.finish();

class SettingsRequest extends FlatBuffer:


	## Initialize the ClearDriftCompensationRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ClearDriftCompensationRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for SettingsRequest
class SettingsRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the SettingsRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SettingsRequest table in one go using the provided [param _fbb]
static func create_SettingsRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: SettingsRequestBuilder = SettingsRequestBuilder.new( _fbb );
	return builder.finish();

class SettingsResponse extends FlatBuffer:

	enum {
		VT_STEAM_VR_TRACKERS = 4,
		VT_FILTERING = 6,
		VT_DRIFT_COMPENSATION = 8,
		VT_OSC_ROUTER = 10,
		VT_VRC_OSC = 12,
		VT_VMC_OSC = 14,
		VT_MODEL_SETTINGS = 16,
		VT_TAP_DETECTION_SETTINGS = 18,
		VT_AUTO_BONE_SETTINGS = 20,
		VT_RESETS_SETTINGS = 22,
		VT_STAY_ALIGNED = 24,
		VT_HID_SETTINGS = 26,
		VT_TIMEOUT = 28,
		VT_VELOCITY_SETTINGS = 30,
		VT_VRM = 32
	}

	## Initialize the SettingsRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SettingsRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_STEAM_VR_TRACKERS)
			and steam_vr_trackers().verify(verifier)
			and verify_offset(verifier, VT_FILTERING)
			and filtering().verify(verifier)
			and verify_offset(verifier, VT_DRIFT_COMPENSATION)
			and drift_compensation().verify(verifier)
			and verify_offset(verifier, VT_OSC_ROUTER)
			and osc_router().verify(verifier)
			and verify_offset(verifier, VT_VRC_OSC)
			and vrc_osc().verify(verifier)
			and verify_offset(verifier, VT_VMC_OSC)
			and vmc_osc().verify(verifier)
			and verify_offset(verifier, VT_MODEL_SETTINGS)
			and model_settings().verify(verifier)
			and verify_offset(verifier, VT_TAP_DETECTION_SETTINGS)
			and tap_detection_settings().verify(verifier)
			and verify_offset(verifier, VT_AUTO_BONE_SETTINGS)
			and auto_bone_settings().verify(verifier)
			and verify_offset(verifier, VT_RESETS_SETTINGS)
			and resets_settings().verify(verifier)
			and verify_offset(verifier, VT_STAY_ALIGNED)
			and stay_aligned().verify(verifier)
			and verify_offset(verifier, VT_HID_SETTINGS)
			and hid_settings().verify(verifier)
			and verify_offset(verifier, VT_TIMEOUT)
			and timeout().verify(verifier)
			and verify_offset(verifier, VT_VELOCITY_SETTINGS)
			and velocity_settings().verify(verifier)
			and verify_offset(verifier, VT_VRM)
			and vrm().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if steam_vr_trackers is present in the buffer, else false
	func steam_vr_trackers_is_present() -> bool:
		return get_field_offset( VT_STEAM_VR_TRACKERS )

	func steam_vr_trackers() -> SolarXR.SteamVRTrackersSetting:
		var field_start: int = get_offset_field_start( VT_STEAM_VR_TRACKERS )
		if not field_start: return null
		return SolarXR.SteamVRTrackersSetting.new( _fb_bytes, field_start )

	## Return true if filtering is present in the buffer, else false
	func filtering_is_present() -> bool:
		return get_field_offset( VT_FILTERING )

	func filtering() -> SolarXR.FilteringSettings:
		var field_start: int = get_offset_field_start( VT_FILTERING )
		if not field_start: return null
		return SolarXR.FilteringSettings.new( _fb_bytes, field_start )

	## Return true if drift_compensation is present in the buffer, else false
	func drift_compensation_is_present() -> bool:
		return get_field_offset( VT_DRIFT_COMPENSATION )

	func drift_compensation() -> SolarXR.DriftCompensationSettings:
		var field_start: int = get_offset_field_start( VT_DRIFT_COMPENSATION )
		if not field_start: return null
		return SolarXR.DriftCompensationSettings.new( _fb_bytes, field_start )

	## Return true if osc_router is present in the buffer, else false
	func osc_router_is_present() -> bool:
		return get_field_offset( VT_OSC_ROUTER )

	func osc_router() -> SolarXR.OSCRouterSettings:
		var field_start: int = get_offset_field_start( VT_OSC_ROUTER )
		if not field_start: return null
		return SolarXR.OSCRouterSettings.new( _fb_bytes, field_start )

	## Return true if vrc_osc is present in the buffer, else false
	func vrc_osc_is_present() -> bool:
		return get_field_offset( VT_VRC_OSC )

	func vrc_osc() -> SolarXR.VRCOSCSettings:
		var field_start: int = get_offset_field_start( VT_VRC_OSC )
		if not field_start: return null
		return SolarXR.VRCOSCSettings.new( _fb_bytes, field_start )

	## Return true if vmc_osc is present in the buffer, else false
	func vmc_osc_is_present() -> bool:
		return get_field_offset( VT_VMC_OSC )

	func vmc_osc() -> SolarXR.VMCOSCSettings:
		var field_start: int = get_offset_field_start( VT_VMC_OSC )
		if not field_start: return null
		return SolarXR.VMCOSCSettings.new( _fb_bytes, field_start )

	## Return true if model_settings is present in the buffer, else false
	func model_settings_is_present() -> bool:
		return get_field_offset( VT_MODEL_SETTINGS )

	func model_settings() -> SolarXR.ModelSettings:
		var field_start: int = get_offset_field_start( VT_MODEL_SETTINGS )
		if not field_start: return null
		return SolarXR.ModelSettings.new( _fb_bytes, field_start )

	## Return true if tap_detection_settings is present in the buffer, else false
	func tap_detection_settings_is_present() -> bool:
		return get_field_offset( VT_TAP_DETECTION_SETTINGS )

	func tap_detection_settings() -> SolarXR.TapDetectionSettings:
		var field_start: int = get_offset_field_start( VT_TAP_DETECTION_SETTINGS )
		if not field_start: return null
		return SolarXR.TapDetectionSettings.new( _fb_bytes, field_start )

	## Return true if auto_bone_settings is present in the buffer, else false
	func auto_bone_settings_is_present() -> bool:
		return get_field_offset( VT_AUTO_BONE_SETTINGS )

	func auto_bone_settings() -> SolarXR.AutoBoneSettings:
		var field_start: int = get_offset_field_start( VT_AUTO_BONE_SETTINGS )
		if not field_start: return null
		return SolarXR.AutoBoneSettings.new( _fb_bytes, field_start )

	## Return true if resets_settings is present in the buffer, else false
	func resets_settings_is_present() -> bool:
		return get_field_offset( VT_RESETS_SETTINGS )

	func resets_settings() -> SolarXR.ResetsSettings:
		var field_start: int = get_offset_field_start( VT_RESETS_SETTINGS )
		if not field_start: return null
		return SolarXR.ResetsSettings.new( _fb_bytes, field_start )

	## Return true if stay_aligned is present in the buffer, else false
	func stay_aligned_is_present() -> bool:
		return get_field_offset( VT_STAY_ALIGNED )

	func stay_aligned() -> SolarXR.StayAlignedSettings:
		var field_start: int = get_offset_field_start( VT_STAY_ALIGNED )
		if not field_start: return null
		return SolarXR.StayAlignedSettings.new( _fb_bytes, field_start )

	## Return true if hid_settings is present in the buffer, else false
	func hid_settings_is_present() -> bool:
		return get_field_offset( VT_HID_SETTINGS )

	func hid_settings() -> SolarXR.HIDSettings:
		var field_start: int = get_offset_field_start( VT_HID_SETTINGS )
		if not field_start: return null
		return SolarXR.HIDSettings.new( _fb_bytes, field_start )

	## Return true if timeout is present in the buffer, else false
	func timeout_is_present() -> bool:
		return get_field_offset( VT_TIMEOUT )

	func timeout() -> SolarXR.TimeoutSettings:
		var field_start: int = get_offset_field_start( VT_TIMEOUT )
		if not field_start: return null
		return SolarXR.TimeoutSettings.new( _fb_bytes, field_start )

	## Return true if velocity_settings is present in the buffer, else false
	func velocity_settings_is_present() -> bool:
		return get_field_offset( VT_VELOCITY_SETTINGS )

	func velocity_settings() -> SolarXR.VelocitySettings:
		var field_start: int = get_offset_field_start( VT_VELOCITY_SETTINGS )
		if not field_start: return null
		return SolarXR.VelocitySettings.new( _fb_bytes, field_start )

	## Return true if vrm is present in the buffer, else false
	func vrm_is_present() -> bool:
		return get_field_offset( VT_VRM )

	func vrm() -> SolarXR.VRMSettings:
		var field_start: int = get_offset_field_start( VT_VRM )
		if not field_start: return null
		return SolarXR.VRMSettings.new( _fb_bytes, field_start )


## Builder class for SettingsResponse
class SettingsResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the steam_vr_trackers field to the SettingsResponse table
	func add_steam_vr_trackers( steam_vr_trackers_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_STEAM_VR_TRACKERS, steam_vr_trackers_offset )

	## Add the filtering field to the SettingsResponse table
	func add_filtering( filtering_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_FILTERING, filtering_offset )

	## Add the drift_compensation field to the SettingsResponse table
	func add_drift_compensation( drift_compensation_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_DRIFT_COMPENSATION, drift_compensation_offset )

	## Add the osc_router field to the SettingsResponse table
	func add_osc_router( osc_router_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_OSC_ROUTER, osc_router_offset )

	## Add the vrc_osc field to the SettingsResponse table
	func add_vrc_osc( vrc_osc_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_VRC_OSC, vrc_osc_offset )

	## Add the vmc_osc field to the SettingsResponse table
	func add_vmc_osc( vmc_osc_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_VMC_OSC, vmc_osc_offset )

	## Add the model_settings field to the SettingsResponse table
	func add_model_settings( model_settings_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_MODEL_SETTINGS, model_settings_offset )

	## Add the tap_detection_settings field to the SettingsResponse table
	func add_tap_detection_settings( tap_detection_settings_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_TAP_DETECTION_SETTINGS, tap_detection_settings_offset )

	## Add the auto_bone_settings field to the SettingsResponse table
	func add_auto_bone_settings( auto_bone_settings_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_AUTO_BONE_SETTINGS, auto_bone_settings_offset )

	## Add the resets_settings field to the SettingsResponse table
	func add_resets_settings( resets_settings_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_RESETS_SETTINGS, resets_settings_offset )

	## Add the stay_aligned field to the SettingsResponse table
	func add_stay_aligned( stay_aligned_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_STAY_ALIGNED, stay_aligned_offset )

	## Add the hid_settings field to the SettingsResponse table
	func add_hid_settings( hid_settings_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_HID_SETTINGS, hid_settings_offset )

	## Add the timeout field to the SettingsResponse table
	func add_timeout( timeout_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_TIMEOUT, timeout_offset )

	## Add the velocity_settings field to the SettingsResponse table
	func add_velocity_settings( velocity_settings_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_VELOCITY_SETTINGS, velocity_settings_offset )

	## Add the vrm field to the SettingsResponse table
	func add_vrm( vrm_offset: int ) -> void:
		fbb_.add_offset( SettingsResponse.VT_VRM, vrm_offset )

	## Finish building the SettingsResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SettingsResponse table in one go using the provided [param _fbb]
static func create_SettingsResponse( _fbb: FlatBufferBuilder,
		steam_vr_trackers: int,
		filtering: int,
		drift_compensation: int,
		osc_router: int,
		vrc_osc: int,
		vmc_osc: int,
		model_settings: int,
		tap_detection_settings: int,
		auto_bone_settings: int,
		resets_settings: int,
		stay_aligned: int,
		hid_settings: int,
		timeout: int,
		velocity_settings: int,
		vrm: int ) -> int :
	var builder: SettingsResponseBuilder = SettingsResponseBuilder.new( _fbb );
	builder.add_vrm( vrm );
	builder.add_velocity_settings( velocity_settings );
	builder.add_timeout( timeout );
	builder.add_hid_settings( hid_settings );
	builder.add_stay_aligned( stay_aligned );
	builder.add_resets_settings( resets_settings );
	builder.add_auto_bone_settings( auto_bone_settings );
	builder.add_tap_detection_settings( tap_detection_settings );
	builder.add_model_settings( model_settings );
	builder.add_vmc_osc( vmc_osc );
	builder.add_vrc_osc( vrc_osc );
	builder.add_osc_router( osc_router );
	builder.add_drift_compensation( drift_compensation );
	builder.add_filtering( filtering );
	builder.add_steam_vr_trackers( steam_vr_trackers );
	return builder.finish();

class ChangeSettingsRequest extends FlatBuffer:

	enum {
		VT_STEAM_VR_TRACKERS = 4,
		VT_FILTERING = 6,
		VT_DRIFT_COMPENSATION = 8,
		VT_OSC_ROUTER = 10,
		VT_VRC_OSC = 12,
		VT_VMC_OSC = 14,
		VT_MODEL_SETTINGS = 16,
		VT_TAP_DETECTION_SETTINGS = 18,
		VT_AUTO_BONE_SETTINGS = 20,
		VT_RESETS_SETTINGS = 22,
		VT_STAY_ALIGNED = 24,
		VT_HID_SETTINGS = 26,
		VT_TIMEOUT = 28,
		VT_VELOCITY_SETTINGS = 30,
		VT_VRM = 32
	}

	## Initialize the SettingsResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SettingsResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_STEAM_VR_TRACKERS)
			and steam_vr_trackers().verify(verifier)
			and verify_offset(verifier, VT_FILTERING)
			and filtering().verify(verifier)
			and verify_offset(verifier, VT_DRIFT_COMPENSATION)
			and drift_compensation().verify(verifier)
			and verify_offset(verifier, VT_OSC_ROUTER)
			and osc_router().verify(verifier)
			and verify_offset(verifier, VT_VRC_OSC)
			and vrc_osc().verify(verifier)
			and verify_offset(verifier, VT_VMC_OSC)
			and vmc_osc().verify(verifier)
			and verify_offset(verifier, VT_MODEL_SETTINGS)
			and model_settings().verify(verifier)
			and verify_offset(verifier, VT_TAP_DETECTION_SETTINGS)
			and tap_detection_settings().verify(verifier)
			and verify_offset(verifier, VT_AUTO_BONE_SETTINGS)
			and auto_bone_settings().verify(verifier)
			and verify_offset(verifier, VT_RESETS_SETTINGS)
			and resets_settings().verify(verifier)
			and verify_offset(verifier, VT_STAY_ALIGNED)
			and stay_aligned().verify(verifier)
			and verify_offset(verifier, VT_HID_SETTINGS)
			and hid_settings().verify(verifier)
			and verify_offset(verifier, VT_TIMEOUT)
			and timeout().verify(verifier)
			and verify_offset(verifier, VT_VELOCITY_SETTINGS)
			and velocity_settings().verify(verifier)
			and verify_offset(verifier, VT_VRM)
			and vrm().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if steam_vr_trackers is present in the buffer, else false
	func steam_vr_trackers_is_present() -> bool:
		return get_field_offset( VT_STEAM_VR_TRACKERS )

	func steam_vr_trackers() -> SolarXR.SteamVRTrackersSetting:
		var field_start: int = get_offset_field_start( VT_STEAM_VR_TRACKERS )
		if not field_start: return null
		return SolarXR.SteamVRTrackersSetting.new( _fb_bytes, field_start )

	## Return true if filtering is present in the buffer, else false
	func filtering_is_present() -> bool:
		return get_field_offset( VT_FILTERING )

	func filtering() -> SolarXR.FilteringSettings:
		var field_start: int = get_offset_field_start( VT_FILTERING )
		if not field_start: return null
		return SolarXR.FilteringSettings.new( _fb_bytes, field_start )

	## Return true if drift_compensation is present in the buffer, else false
	func drift_compensation_is_present() -> bool:
		return get_field_offset( VT_DRIFT_COMPENSATION )

	func drift_compensation() -> SolarXR.DriftCompensationSettings:
		var field_start: int = get_offset_field_start( VT_DRIFT_COMPENSATION )
		if not field_start: return null
		return SolarXR.DriftCompensationSettings.new( _fb_bytes, field_start )

	## Return true if osc_router is present in the buffer, else false
	func osc_router_is_present() -> bool:
		return get_field_offset( VT_OSC_ROUTER )

	func osc_router() -> SolarXR.OSCRouterSettings:
		var field_start: int = get_offset_field_start( VT_OSC_ROUTER )
		if not field_start: return null
		return SolarXR.OSCRouterSettings.new( _fb_bytes, field_start )

	## Return true if vrc_osc is present in the buffer, else false
	func vrc_osc_is_present() -> bool:
		return get_field_offset( VT_VRC_OSC )

	func vrc_osc() -> SolarXR.VRCOSCSettings:
		var field_start: int = get_offset_field_start( VT_VRC_OSC )
		if not field_start: return null
		return SolarXR.VRCOSCSettings.new( _fb_bytes, field_start )

	## Return true if vmc_osc is present in the buffer, else false
	func vmc_osc_is_present() -> bool:
		return get_field_offset( VT_VMC_OSC )

	func vmc_osc() -> SolarXR.VMCOSCSettings:
		var field_start: int = get_offset_field_start( VT_VMC_OSC )
		if not field_start: return null
		return SolarXR.VMCOSCSettings.new( _fb_bytes, field_start )

	## Return true if model_settings is present in the buffer, else false
	func model_settings_is_present() -> bool:
		return get_field_offset( VT_MODEL_SETTINGS )

	func model_settings() -> SolarXR.ModelSettings:
		var field_start: int = get_offset_field_start( VT_MODEL_SETTINGS )
		if not field_start: return null
		return SolarXR.ModelSettings.new( _fb_bytes, field_start )

	## Return true if tap_detection_settings is present in the buffer, else false
	func tap_detection_settings_is_present() -> bool:
		return get_field_offset( VT_TAP_DETECTION_SETTINGS )

	func tap_detection_settings() -> SolarXR.TapDetectionSettings:
		var field_start: int = get_offset_field_start( VT_TAP_DETECTION_SETTINGS )
		if not field_start: return null
		return SolarXR.TapDetectionSettings.new( _fb_bytes, field_start )

	## Return true if auto_bone_settings is present in the buffer, else false
	func auto_bone_settings_is_present() -> bool:
		return get_field_offset( VT_AUTO_BONE_SETTINGS )

	func auto_bone_settings() -> SolarXR.AutoBoneSettings:
		var field_start: int = get_offset_field_start( VT_AUTO_BONE_SETTINGS )
		if not field_start: return null
		return SolarXR.AutoBoneSettings.new( _fb_bytes, field_start )

	## Return true if resets_settings is present in the buffer, else false
	func resets_settings_is_present() -> bool:
		return get_field_offset( VT_RESETS_SETTINGS )

	func resets_settings() -> SolarXR.ResetsSettings:
		var field_start: int = get_offset_field_start( VT_RESETS_SETTINGS )
		if not field_start: return null
		return SolarXR.ResetsSettings.new( _fb_bytes, field_start )

	## Return true if stay_aligned is present in the buffer, else false
	func stay_aligned_is_present() -> bool:
		return get_field_offset( VT_STAY_ALIGNED )

	func stay_aligned() -> SolarXR.StayAlignedSettings:
		var field_start: int = get_offset_field_start( VT_STAY_ALIGNED )
		if not field_start: return null
		return SolarXR.StayAlignedSettings.new( _fb_bytes, field_start )

	## Return true if hid_settings is present in the buffer, else false
	func hid_settings_is_present() -> bool:
		return get_field_offset( VT_HID_SETTINGS )

	func hid_settings() -> SolarXR.HIDSettings:
		var field_start: int = get_offset_field_start( VT_HID_SETTINGS )
		if not field_start: return null
		return SolarXR.HIDSettings.new( _fb_bytes, field_start )

	## Return true if timeout is present in the buffer, else false
	func timeout_is_present() -> bool:
		return get_field_offset( VT_TIMEOUT )

	func timeout() -> SolarXR.TimeoutSettings:
		var field_start: int = get_offset_field_start( VT_TIMEOUT )
		if not field_start: return null
		return SolarXR.TimeoutSettings.new( _fb_bytes, field_start )

	## Return true if velocity_settings is present in the buffer, else false
	func velocity_settings_is_present() -> bool:
		return get_field_offset( VT_VELOCITY_SETTINGS )

	func velocity_settings() -> SolarXR.VelocitySettings:
		var field_start: int = get_offset_field_start( VT_VELOCITY_SETTINGS )
		if not field_start: return null
		return SolarXR.VelocitySettings.new( _fb_bytes, field_start )

	## Return true if vrm is present in the buffer, else false
	func vrm_is_present() -> bool:
		return get_field_offset( VT_VRM )

	func vrm() -> SolarXR.VRMSettings:
		var field_start: int = get_offset_field_start( VT_VRM )
		if not field_start: return null
		return SolarXR.VRMSettings.new( _fb_bytes, field_start )


## Builder class for ChangeSettingsRequest
class ChangeSettingsRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the steam_vr_trackers field to the ChangeSettingsRequest table
	func add_steam_vr_trackers( steam_vr_trackers_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_STEAM_VR_TRACKERS, steam_vr_trackers_offset )

	## Add the filtering field to the ChangeSettingsRequest table
	func add_filtering( filtering_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_FILTERING, filtering_offset )

	## Add the drift_compensation field to the ChangeSettingsRequest table
	func add_drift_compensation( drift_compensation_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_DRIFT_COMPENSATION, drift_compensation_offset )

	## Add the osc_router field to the ChangeSettingsRequest table
	func add_osc_router( osc_router_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_OSC_ROUTER, osc_router_offset )

	## Add the vrc_osc field to the ChangeSettingsRequest table
	func add_vrc_osc( vrc_osc_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_VRC_OSC, vrc_osc_offset )

	## Add the vmc_osc field to the ChangeSettingsRequest table
	func add_vmc_osc( vmc_osc_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_VMC_OSC, vmc_osc_offset )

	## Add the model_settings field to the ChangeSettingsRequest table
	func add_model_settings( model_settings_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_MODEL_SETTINGS, model_settings_offset )

	## Add the tap_detection_settings field to the ChangeSettingsRequest table
	func add_tap_detection_settings( tap_detection_settings_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_TAP_DETECTION_SETTINGS, tap_detection_settings_offset )

	## Add the auto_bone_settings field to the ChangeSettingsRequest table
	func add_auto_bone_settings( auto_bone_settings_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_AUTO_BONE_SETTINGS, auto_bone_settings_offset )

	## Add the resets_settings field to the ChangeSettingsRequest table
	func add_resets_settings( resets_settings_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_RESETS_SETTINGS, resets_settings_offset )

	## Add the stay_aligned field to the ChangeSettingsRequest table
	func add_stay_aligned( stay_aligned_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_STAY_ALIGNED, stay_aligned_offset )

	## Add the hid_settings field to the ChangeSettingsRequest table
	func add_hid_settings( hid_settings_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_HID_SETTINGS, hid_settings_offset )

	## Add the timeout field to the ChangeSettingsRequest table
	func add_timeout( timeout_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_TIMEOUT, timeout_offset )

	## Add the velocity_settings field to the ChangeSettingsRequest table
	func add_velocity_settings( velocity_settings_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_VELOCITY_SETTINGS, velocity_settings_offset )

	## Add the vrm field to the ChangeSettingsRequest table
	func add_vrm( vrm_offset: int ) -> void:
		fbb_.add_offset( ChangeSettingsRequest.VT_VRM, vrm_offset )

	## Finish building the ChangeSettingsRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ChangeSettingsRequest table in one go using the provided [param _fbb]
static func create_ChangeSettingsRequest( _fbb: FlatBufferBuilder,
		steam_vr_trackers: int,
		filtering: int,
		drift_compensation: int,
		osc_router: int,
		vrc_osc: int,
		vmc_osc: int,
		model_settings: int,
		tap_detection_settings: int,
		auto_bone_settings: int,
		resets_settings: int,
		stay_aligned: int,
		hid_settings: int,
		timeout: int,
		velocity_settings: int,
		vrm: int ) -> int :
	var builder: ChangeSettingsRequestBuilder = ChangeSettingsRequestBuilder.new( _fbb );
	builder.add_vrm( vrm );
	builder.add_velocity_settings( velocity_settings );
	builder.add_timeout( timeout );
	builder.add_hid_settings( hid_settings );
	builder.add_stay_aligned( stay_aligned );
	builder.add_resets_settings( resets_settings );
	builder.add_auto_bone_settings( auto_bone_settings );
	builder.add_tap_detection_settings( tap_detection_settings );
	builder.add_model_settings( model_settings );
	builder.add_vmc_osc( vmc_osc );
	builder.add_vrc_osc( vrc_osc );
	builder.add_osc_router( osc_router );
	builder.add_drift_compensation( drift_compensation );
	builder.add_filtering( filtering );
	builder.add_steam_vr_trackers( steam_vr_trackers );
	return builder.finish();

class SteamVRTrackersSetting extends FlatBuffer:

	enum {
		VT_WAIST = 4,
		VT_CHEST = 6,
		VT_FEET = 8,
		VT_KNEES = 10,
		VT_ELBOWS = 12,
		VT_HANDS = 14,
		VT_AUTOMATICTRACKERTOGGLE = 16,
		VT_LEFT_FOOT = 18,
		VT_RIGHT_FOOT = 20,
		VT_LEFT_KNEE = 22,
		VT_RIGHT_KNEE = 24,
		VT_LEFT_ELBOW = 26,
		VT_RIGHT_ELBOW = 28,
		VT_LEFT_HAND = 30,
		VT_RIGHT_HAND = 32
	}

	## Initialize the ChangeSettingsRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ChangeSettingsRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_WAIST, 1)
			and verify_field_u8(verifier, VT_CHEST, 1)
			and verify_field_u8(verifier, VT_AUTOMATICTRACKERTOGGLE, 1)
			and verify_field_u8(verifier, VT_LEFT_FOOT, 1)
			and verify_field_u8(verifier, VT_RIGHT_FOOT, 1)
			and verify_field_u8(verifier, VT_LEFT_KNEE, 1)
			and verify_field_u8(verifier, VT_RIGHT_KNEE, 1)
			and verify_field_u8(verifier, VT_LEFT_ELBOW, 1)
			and verify_field_u8(verifier, VT_RIGHT_ELBOW, 1)
			and verify_field_u8(verifier, VT_LEFT_HAND, 1)
			and verify_field_u8(verifier, VT_RIGHT_HAND, 1)
			and verify_end_table(verifier)
		)

	## Return true if waist is present in the buffer, else false
	func waist_is_present() -> bool:
		return get_field_offset( VT_WAIST )

	func waist() -> bool:
		var field_start: int = get_inline_field_start( VT_WAIST )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if chest is present in the buffer, else false
	func chest_is_present() -> bool:
		return get_field_offset( VT_CHEST )

	func chest() -> bool:
		var field_start: int = get_inline_field_start( VT_CHEST )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if automaticTrackerToggle is present in the buffer, else false
	func automaticTrackerToggle_is_present() -> bool:
		return get_field_offset( VT_AUTOMATICTRACKERTOGGLE )

	func automaticTrackerToggle() -> bool:
		var field_start: int = get_inline_field_start( VT_AUTOMATICTRACKERTOGGLE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if left_foot is present in the buffer, else false
	func left_foot_is_present() -> bool:
		return get_field_offset( VT_LEFT_FOOT )

	func left_foot() -> bool:
		var field_start: int = get_inline_field_start( VT_LEFT_FOOT )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if right_foot is present in the buffer, else false
	func right_foot_is_present() -> bool:
		return get_field_offset( VT_RIGHT_FOOT )

	func right_foot() -> bool:
		var field_start: int = get_inline_field_start( VT_RIGHT_FOOT )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if left_knee is present in the buffer, else false
	func left_knee_is_present() -> bool:
		return get_field_offset( VT_LEFT_KNEE )

	func left_knee() -> bool:
		var field_start: int = get_inline_field_start( VT_LEFT_KNEE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if right_knee is present in the buffer, else false
	func right_knee_is_present() -> bool:
		return get_field_offset( VT_RIGHT_KNEE )

	func right_knee() -> bool:
		var field_start: int = get_inline_field_start( VT_RIGHT_KNEE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if left_elbow is present in the buffer, else false
	func left_elbow_is_present() -> bool:
		return get_field_offset( VT_LEFT_ELBOW )

	func left_elbow() -> bool:
		var field_start: int = get_inline_field_start( VT_LEFT_ELBOW )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if right_elbow is present in the buffer, else false
	func right_elbow_is_present() -> bool:
		return get_field_offset( VT_RIGHT_ELBOW )

	func right_elbow() -> bool:
		var field_start: int = get_inline_field_start( VT_RIGHT_ELBOW )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if left_hand is present in the buffer, else false
	func left_hand_is_present() -> bool:
		return get_field_offset( VT_LEFT_HAND )

	func left_hand() -> bool:
		var field_start: int = get_inline_field_start( VT_LEFT_HAND )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if right_hand is present in the buffer, else false
	func right_hand_is_present() -> bool:
		return get_field_offset( VT_RIGHT_HAND )

	func right_hand() -> bool:
		var field_start: int = get_inline_field_start( VT_RIGHT_HAND )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for SteamVRTrackersSetting
class SteamVRTrackersSettingBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the waist field to the SteamVRTrackersSetting table
	func add_waist( waist: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_WAIST, waist, 0 )

	## Add the chest field to the SteamVRTrackersSetting table
	func add_chest( chest: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_CHEST, chest, 0 )

	## Add the automaticTrackerToggle field to the SteamVRTrackersSetting table
	func add_automaticTrackerToggle( automaticTrackerToggle: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_AUTOMATICTRACKERTOGGLE, automaticTrackerToggle, 0 )

	## Add the left_foot field to the SteamVRTrackersSetting table
	func add_left_foot( left_foot: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_LEFT_FOOT, left_foot, 0 )

	## Add the right_foot field to the SteamVRTrackersSetting table
	func add_right_foot( right_foot: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_RIGHT_FOOT, right_foot, 0 )

	## Add the left_knee field to the SteamVRTrackersSetting table
	func add_left_knee( left_knee: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_LEFT_KNEE, left_knee, 0 )

	## Add the right_knee field to the SteamVRTrackersSetting table
	func add_right_knee( right_knee: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_RIGHT_KNEE, right_knee, 0 )

	## Add the left_elbow field to the SteamVRTrackersSetting table
	func add_left_elbow( left_elbow: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_LEFT_ELBOW, left_elbow, 0 )

	## Add the right_elbow field to the SteamVRTrackersSetting table
	func add_right_elbow( right_elbow: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_RIGHT_ELBOW, right_elbow, 0 )

	## Add the left_hand field to the SteamVRTrackersSetting table
	func add_left_hand( left_hand: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_LEFT_HAND, left_hand, 0 )

	## Add the right_hand field to the SteamVRTrackersSetting table
	func add_right_hand( right_hand: bool ) -> void:
		fbb_.add_element_bool_default( SteamVRTrackersSetting.VT_RIGHT_HAND, right_hand, 0 )

	## Finish building the SteamVRTrackersSetting table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SteamVRTrackersSetting table in one go using the provided [param _fbb]
static func create_SteamVRTrackersSetting( _fbb: FlatBufferBuilder,
		waist: bool,
		chest: bool,
		automaticTrackerToggle: bool,
		left_foot: bool,
		right_foot: bool,
		left_knee: bool,
		right_knee: bool,
		left_elbow: bool,
		right_elbow: bool,
		left_hand: bool,
		right_hand: bool ) -> int :
	var builder: SteamVRTrackersSettingBuilder = SteamVRTrackersSettingBuilder.new( _fbb );
	builder.add_right_hand( right_hand );
	builder.add_left_hand( left_hand );
	builder.add_right_elbow( right_elbow );
	builder.add_left_elbow( left_elbow );
	builder.add_right_knee( right_knee );
	builder.add_left_knee( left_knee );
	builder.add_right_foot( right_foot );
	builder.add_left_foot( left_foot );
	builder.add_automaticTrackerToggle( automaticTrackerToggle );
	builder.add_chest( chest );
	builder.add_waist( waist );
	return builder.finish();

class FilteringSettings extends FlatBuffer:

	enum {
		VT_TYPE = 4,
		VT_AMOUNT = 6
	}

	## Initialize the SteamVRTrackersSetting with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SteamVRTrackersSetting data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_TYPE, 1)
			and verify_field_float(verifier, VT_AMOUNT, 4)
			and verify_end_table(verifier)
		)

	## Return true if type is present in the buffer, else false
	func type_is_present() -> bool:
		return get_field_offset( VT_TYPE )

	func type() -> FilteringType:
		var field_start: int = get_inline_field_start( VT_TYPE )
		if not field_start: return 0 as FilteringType
		var decoded: FilteringType = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if amount is present in the buffer, else false
	func amount_is_present() -> bool:
		return get_field_offset( VT_AMOUNT )

	func amount() -> float:
		var field_start: int = get_inline_field_start( VT_AMOUNT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for FilteringSettings
class FilteringSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the type field to the FilteringSettings table
	func add_type( type: FilteringType ) -> void:
		fbb_.add_element_ubyte( FilteringSettings.VT_TYPE, type )

	## Add the amount field to the FilteringSettings table
	func add_amount( amount: float ) -> void:
		fbb_.add_element_float_default( FilteringSettings.VT_AMOUNT, amount, 0.0 )

	## Finish building the FilteringSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a FilteringSettings table in one go using the provided [param _fbb]
static func create_FilteringSettings( _fbb: FlatBufferBuilder,
		type: FilteringType,
		amount: float ) -> int :
	var builder: FilteringSettingsBuilder = FilteringSettingsBuilder.new( _fbb );
	builder.add_amount( amount );
	builder.add_type( type );
	return builder.finish();

class DriftCompensationSettings extends FlatBuffer:

	enum {
		VT_ENABLED = 4,
		VT_PREDICTION = 6,
		VT_AMOUNT = 8,
		VT_MAX_RESETS = 10
	}

	## Initialize the FilteringSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the FilteringSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_ENABLED, 1)
			and verify_field_u8(verifier, VT_PREDICTION, 1)
			and verify_field_float(verifier, VT_AMOUNT, 4)
			and verify_field_u16(verifier, VT_MAX_RESETS, 2)
			and verify_end_table(verifier)
		)

	## Return true if enabled is present in the buffer, else false
	func enabled_is_present() -> bool:
		return get_field_offset( VT_ENABLED )

	func enabled() -> bool:
		var field_start: int = get_inline_field_start( VT_ENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if prediction is present in the buffer, else false
	func prediction_is_present() -> bool:
		return get_field_offset( VT_PREDICTION )

	func prediction() -> bool:
		var field_start: int = get_inline_field_start( VT_PREDICTION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if amount is present in the buffer, else false
	func amount_is_present() -> bool:
		return get_field_offset( VT_AMOUNT )

	func amount() -> float:
		var field_start: int = get_inline_field_start( VT_AMOUNT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if max_resets is present in the buffer, else false
	func max_resets_is_present() -> bool:
		return get_field_offset( VT_MAX_RESETS )

	func max_resets() -> int:
		var field_start: int = get_inline_field_start( VT_MAX_RESETS )
		if not field_start: return 0
		return _fb_bytes.decode_u16( field_start )


## Builder class for DriftCompensationSettings
class DriftCompensationSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the enabled field to the DriftCompensationSettings table
	func add_enabled( enabled: bool ) -> void:
		fbb_.add_element_bool_default( DriftCompensationSettings.VT_ENABLED, enabled, 0 )

	## Add the prediction field to the DriftCompensationSettings table
	func add_prediction( prediction: bool ) -> void:
		fbb_.add_element_bool_default( DriftCompensationSettings.VT_PREDICTION, prediction, 0 )

	## Add the amount field to the DriftCompensationSettings table
	func add_amount( amount: float ) -> void:
		fbb_.add_element_float_default( DriftCompensationSettings.VT_AMOUNT, amount, 0.0 )

	## Add the max_resets field to the DriftCompensationSettings table
	func add_max_resets( max_resets: int ) -> void:
		fbb_.add_element_ushort_default( DriftCompensationSettings.VT_MAX_RESETS, max_resets, 0 )

	## Finish building the DriftCompensationSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a DriftCompensationSettings table in one go using the provided [param _fbb]
static func create_DriftCompensationSettings( _fbb: FlatBufferBuilder,
		enabled: bool,
		prediction: bool,
		amount: float,
		max_resets: int ) -> int :
	var builder: DriftCompensationSettingsBuilder = DriftCompensationSettingsBuilder.new( _fbb );
	builder.add_amount( amount );
	builder.add_max_resets( max_resets );
	builder.add_prediction( prediction );
	builder.add_enabled( enabled );
	return builder.finish();

class OSCRouterSettings extends FlatBuffer:

	enum {
		VT_OSC_SETTINGS = 4
	}

	## Initialize the DriftCompensationSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the DriftCompensationSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_OSC_SETTINGS)
			and osc_settings().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if osc_settings is present in the buffer, else false
	func osc_settings_is_present() -> bool:
		return get_field_offset( VT_OSC_SETTINGS )

	func osc_settings() -> SolarXR.OSCSettings:
		var field_start: int = get_offset_field_start( VT_OSC_SETTINGS )
		if not field_start: return null
		return SolarXR.OSCSettings.new( _fb_bytes, field_start )


## Builder class for OSCRouterSettings
class OSCRouterSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the osc_settings field to the OSCRouterSettings table
	func add_osc_settings( osc_settings_offset: int ) -> void:
		fbb_.add_offset( OSCRouterSettings.VT_OSC_SETTINGS, osc_settings_offset )

	## Finish building the OSCRouterSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OSCRouterSettings table in one go using the provided [param _fbb]
static func create_OSCRouterSettings( _fbb: FlatBufferBuilder,
		osc_settings: int ) -> int :
	var builder: OSCRouterSettingsBuilder = OSCRouterSettingsBuilder.new( _fbb );
	builder.add_osc_settings( osc_settings );
	return builder.finish();

class VRCOSCSettings extends FlatBuffer:

	enum {
		VT_OSC_SETTINGS = 4,
		VT_TRACKERS = 6,
		VT_OSCQUERY_ENABLED = 8
	}

	## Initialize the OSCRouterSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OSCRouterSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_OSC_SETTINGS)
			and osc_settings().verify(verifier)
			and verify_offset(verifier, VT_TRACKERS)
			and trackers().verify(verifier)
			and verify_field_u8(verifier, VT_OSCQUERY_ENABLED, 1)
			and verify_end_table(verifier)
		)

	## Return true if osc_settings is present in the buffer, else false
	func osc_settings_is_present() -> bool:
		return get_field_offset( VT_OSC_SETTINGS )

	func osc_settings() -> SolarXR.OSCSettings:
		var field_start: int = get_offset_field_start( VT_OSC_SETTINGS )
		if not field_start: return null
		return SolarXR.OSCSettings.new( _fb_bytes, field_start )

	## Return true if trackers is present in the buffer, else false
	func trackers_is_present() -> bool:
		return get_field_offset( VT_TRACKERS )

	func trackers() -> SolarXR.OSCTrackersSetting:
		var field_start: int = get_offset_field_start( VT_TRACKERS )
		if not field_start: return null
		return SolarXR.OSCTrackersSetting.new( _fb_bytes, field_start )

	## Return true if oscquery_enabled is present in the buffer, else false
	func oscquery_enabled_is_present() -> bool:
		return get_field_offset( VT_OSCQUERY_ENABLED )

	func oscquery_enabled() -> bool:
		var field_start: int = get_inline_field_start( VT_OSCQUERY_ENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for VRCOSCSettings
class VRCOSCSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the osc_settings field to the VRCOSCSettings table
	func add_osc_settings( osc_settings_offset: int ) -> void:
		fbb_.add_offset( VRCOSCSettings.VT_OSC_SETTINGS, osc_settings_offset )

	## Add the trackers field to the VRCOSCSettings table
	func add_trackers( trackers_offset: int ) -> void:
		fbb_.add_offset( VRCOSCSettings.VT_TRACKERS, trackers_offset )

	## Add the oscquery_enabled field to the VRCOSCSettings table
	func add_oscquery_enabled( oscquery_enabled: bool ) -> void:
		fbb_.add_element_bool_default( VRCOSCSettings.VT_OSCQUERY_ENABLED, oscquery_enabled, 0 )

	## Finish building the VRCOSCSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VRCOSCSettings table in one go using the provided [param _fbb]
static func create_VRCOSCSettings( _fbb: FlatBufferBuilder,
		osc_settings: int,
		trackers: int,
		oscquery_enabled: bool ) -> int :
	var builder: VRCOSCSettingsBuilder = VRCOSCSettingsBuilder.new( _fbb );
	builder.add_trackers( trackers );
	builder.add_osc_settings( osc_settings );
	builder.add_oscquery_enabled( oscquery_enabled );
	return builder.finish();

class VMCOSCSettings extends FlatBuffer:

	enum {
		VT_OSC_SETTINGS = 4,
		VT_VRM_JSON = 6,
		VT_ANCHOR_HIP = 8,
		VT_MIRROR_TRACKING = 10
	}

	## Initialize the VRCOSCSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VRCOSCSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_OSC_SETTINGS)
			and osc_settings().verify(verifier)
			and verify_field_u8(verifier, VT_ANCHOR_HIP, 1)
			and verify_field_u8(verifier, VT_MIRROR_TRACKING, 1)
			and verify_end_table(verifier)
		)

	## Return true if osc_settings is present in the buffer, else false
	func osc_settings_is_present() -> bool:
		return get_field_offset( VT_OSC_SETTINGS )

	func osc_settings() -> SolarXR.OSCSettings:
		var field_start: int = get_offset_field_start( VT_OSC_SETTINGS )
		if not field_start: return null
		return SolarXR.OSCSettings.new( _fb_bytes, field_start )

	## Return true if anchor_hip is present in the buffer, else false
	func anchor_hip_is_present() -> bool:
		return get_field_offset( VT_ANCHOR_HIP )

	func anchor_hip() -> bool:
		var field_start: int = get_inline_field_start( VT_ANCHOR_HIP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if mirror_tracking is present in the buffer, else false
	func mirror_tracking_is_present() -> bool:
		return get_field_offset( VT_MIRROR_TRACKING )

	func mirror_tracking() -> bool:
		var field_start: int = get_inline_field_start( VT_MIRROR_TRACKING )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for VMCOSCSettings
class VMCOSCSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the osc_settings field to the VMCOSCSettings table
	func add_osc_settings( osc_settings_offset: int ) -> void:
		fbb_.add_offset( VMCOSCSettings.VT_OSC_SETTINGS, osc_settings_offset )

	## Add the anchor_hip field to the VMCOSCSettings table
	func add_anchor_hip( anchor_hip: bool ) -> void:
		fbb_.add_element_bool_default( VMCOSCSettings.VT_ANCHOR_HIP, anchor_hip, 0 )

	## Add the mirror_tracking field to the VMCOSCSettings table
	func add_mirror_tracking( mirror_tracking: bool ) -> void:
		fbb_.add_element_bool_default( VMCOSCSettings.VT_MIRROR_TRACKING, mirror_tracking, 0 )

	## Finish building the VMCOSCSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VMCOSCSettings table in one go using the provided [param _fbb]
static func create_VMCOSCSettings( _fbb: FlatBufferBuilder,
		osc_settings: int,
		anchor_hip: bool,
		mirror_tracking: bool ) -> int :
	var builder: VMCOSCSettingsBuilder = VMCOSCSettingsBuilder.new( _fbb );
	builder.add_osc_settings( osc_settings );
	builder.add_mirror_tracking( mirror_tracking );
	builder.add_anchor_hip( anchor_hip );
	return builder.finish();

class VRMSettings extends FlatBuffer:

	enum {
		VT_VRM_JSON = 4
	}

	## Initialize the VMCOSCSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VMCOSCSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_VRM_JSON)
			and verify_string( verifier, VT_VRM_JSON )
			and verify_end_table(verifier)
		)

	## Return true if vrm_json is present in the buffer, else false
	func vrm_json_is_present() -> bool:
		return get_field_offset( VT_VRM_JSON )

	func vrm_json() -> String:
		var field_start: int = get_offset_field_start( VT_VRM_JSON )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for VRMSettings
class VRMSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the vrm_json field to the VRMSettings table
	func add_vrm_json( vrm_json_offset: int ) -> void:
		fbb_.add_offset( VRMSettings.VT_VRM_JSON, vrm_json_offset )

	## Finish building the VRMSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VRMSettings table in one go using the provided [param _fbb]
static func create_VRMSettings( _fbb: FlatBufferBuilder,
		vrm_json: int ) -> int :
	var builder: VRMSettingsBuilder = VRMSettingsBuilder.new( _fbb );
	builder.add_vrm_json( vrm_json );
	return builder.finish();

class OSCSettings extends FlatBuffer:

	enum {
		VT_ENABLED = 4,
		VT_PORT_IN = 6,
		VT_PORT_OUT = 8,
		VT_ADDRESS = 10
	}

	## Initialize the VRMSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VRMSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_ENABLED, 1)
			and verify_field_u16(verifier, VT_PORT_IN, 2)
			and verify_field_u16(verifier, VT_PORT_OUT, 2)
			and verify_offset(verifier, VT_ADDRESS)
			and verify_string( verifier, VT_ADDRESS )
			and verify_end_table(verifier)
		)

	## Return true if enabled is present in the buffer, else false
	func enabled_is_present() -> bool:
		return get_field_offset( VT_ENABLED )

	func enabled() -> bool:
		var field_start: int = get_inline_field_start( VT_ENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if port_in is present in the buffer, else false
	func port_in_is_present() -> bool:
		return get_field_offset( VT_PORT_IN )

	func port_in() -> int:
		var field_start: int = get_inline_field_start( VT_PORT_IN )
		if not field_start: return 0
		return _fb_bytes.decode_u16( field_start )

	## Return true if port_out is present in the buffer, else false
	func port_out_is_present() -> bool:
		return get_field_offset( VT_PORT_OUT )

	func port_out() -> int:
		var field_start: int = get_inline_field_start( VT_PORT_OUT )
		if not field_start: return 0
		return _fb_bytes.decode_u16( field_start )

	## Return true if address is present in the buffer, else false
	func address_is_present() -> bool:
		return get_field_offset( VT_ADDRESS )

	func address() -> String:
		var field_start: int = get_offset_field_start( VT_ADDRESS )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for OSCSettings
class OSCSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the enabled field to the OSCSettings table
	func add_enabled( enabled: bool ) -> void:
		fbb_.add_element_bool_default( OSCSettings.VT_ENABLED, enabled, 0 )

	## Add the port_in field to the OSCSettings table
	func add_port_in( port_in: int ) -> void:
		fbb_.add_element_ushort_default( OSCSettings.VT_PORT_IN, port_in, 0 )

	## Add the port_out field to the OSCSettings table
	func add_port_out( port_out: int ) -> void:
		fbb_.add_element_ushort_default( OSCSettings.VT_PORT_OUT, port_out, 0 )

	## Add the address field to the OSCSettings table
	func add_address( address_offset: int ) -> void:
		fbb_.add_offset( OSCSettings.VT_ADDRESS, address_offset )

	## Finish building the OSCSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OSCSettings table in one go using the provided [param _fbb]
static func create_OSCSettings( _fbb: FlatBufferBuilder,
		enabled: bool,
		port_in: int,
		port_out: int,
		address: int ) -> int :
	var builder: OSCSettingsBuilder = OSCSettingsBuilder.new( _fbb );
	builder.add_address( address );
	builder.add_port_out( port_out );
	builder.add_port_in( port_in );
	builder.add_enabled( enabled );
	return builder.finish();

class OSCTrackersSetting extends FlatBuffer:

	enum {
		VT_HEAD = 4,
		VT_CHEST = 6,
		VT_WAIST = 8,
		VT_KNEES = 10,
		VT_FEET = 12,
		VT_ELBOWS = 14,
		VT_HANDS = 16
	}

	## Initialize the OSCSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OSCSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_HEAD, 1)
			and verify_field_u8(verifier, VT_CHEST, 1)
			and verify_field_u8(verifier, VT_WAIST, 1)
			and verify_field_u8(verifier, VT_KNEES, 1)
			and verify_field_u8(verifier, VT_FEET, 1)
			and verify_field_u8(verifier, VT_ELBOWS, 1)
			and verify_field_u8(verifier, VT_HANDS, 1)
			and verify_end_table(verifier)
		)

	## Return true if head is present in the buffer, else false
	func head_is_present() -> bool:
		return get_field_offset( VT_HEAD )

	func head() -> bool:
		var field_start: int = get_inline_field_start( VT_HEAD )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if chest is present in the buffer, else false
	func chest_is_present() -> bool:
		return get_field_offset( VT_CHEST )

	func chest() -> bool:
		var field_start: int = get_inline_field_start( VT_CHEST )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if waist is present in the buffer, else false
	func waist_is_present() -> bool:
		return get_field_offset( VT_WAIST )

	func waist() -> bool:
		var field_start: int = get_inline_field_start( VT_WAIST )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if knees is present in the buffer, else false
	func knees_is_present() -> bool:
		return get_field_offset( VT_KNEES )

	func knees() -> bool:
		var field_start: int = get_inline_field_start( VT_KNEES )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if feet is present in the buffer, else false
	func feet_is_present() -> bool:
		return get_field_offset( VT_FEET )

	func feet() -> bool:
		var field_start: int = get_inline_field_start( VT_FEET )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if elbows is present in the buffer, else false
	func elbows_is_present() -> bool:
		return get_field_offset( VT_ELBOWS )

	func elbows() -> bool:
		var field_start: int = get_inline_field_start( VT_ELBOWS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if hands is present in the buffer, else false
	func hands_is_present() -> bool:
		return get_field_offset( VT_HANDS )

	func hands() -> bool:
		var field_start: int = get_inline_field_start( VT_HANDS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for OSCTrackersSetting
class OSCTrackersSettingBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the head field to the OSCTrackersSetting table
	func add_head( head: bool ) -> void:
		fbb_.add_element_bool_default( OSCTrackersSetting.VT_HEAD, head, 0 )

	## Add the chest field to the OSCTrackersSetting table
	func add_chest( chest: bool ) -> void:
		fbb_.add_element_bool_default( OSCTrackersSetting.VT_CHEST, chest, 0 )

	## Add the waist field to the OSCTrackersSetting table
	func add_waist( waist: bool ) -> void:
		fbb_.add_element_bool_default( OSCTrackersSetting.VT_WAIST, waist, 0 )

	## Add the knees field to the OSCTrackersSetting table
	func add_knees( knees: bool ) -> void:
		fbb_.add_element_bool_default( OSCTrackersSetting.VT_KNEES, knees, 0 )

	## Add the feet field to the OSCTrackersSetting table
	func add_feet( feet: bool ) -> void:
		fbb_.add_element_bool_default( OSCTrackersSetting.VT_FEET, feet, 0 )

	## Add the elbows field to the OSCTrackersSetting table
	func add_elbows( elbows: bool ) -> void:
		fbb_.add_element_bool_default( OSCTrackersSetting.VT_ELBOWS, elbows, 0 )

	## Add the hands field to the OSCTrackersSetting table
	func add_hands( hands: bool ) -> void:
		fbb_.add_element_bool_default( OSCTrackersSetting.VT_HANDS, hands, 0 )

	## Finish building the OSCTrackersSetting table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OSCTrackersSetting table in one go using the provided [param _fbb]
static func create_OSCTrackersSetting( _fbb: FlatBufferBuilder,
		head: bool,
		chest: bool,
		waist: bool,
		knees: bool,
		feet: bool,
		elbows: bool,
		hands: bool ) -> int :
	var builder: OSCTrackersSettingBuilder = OSCTrackersSettingBuilder.new( _fbb );
	builder.add_hands( hands );
	builder.add_elbows( elbows );
	builder.add_feet( feet );
	builder.add_knees( knees );
	builder.add_waist( waist );
	builder.add_chest( chest );
	builder.add_head( head );
	return builder.finish();

class TapDetectionSettings extends FlatBuffer:

	enum {
		VT_FULL_RESET_DELAY = 4,
		VT_FULL_RESET_ENABLED = 6,
		VT_FULL_RESET_TAPS = 8,
		VT_YAW_RESET_DELAY = 10,
		VT_YAW_RESET_ENABLED = 12,
		VT_YAW_RESET_TAPS = 14,
		VT_MOUNTING_RESET_DELAY = 16,
		VT_MOUNTING_RESET_ENABLED = 18,
		VT_MOUNTING_RESET_TAPS = 20,
		VT_SETUP_MODE = 22,
		VT_NUMBER_TRACKERS_OVER_THRESHOLD = 24,
		VT_YAW_RESET_TRACKER = 26,
		VT_FULL_RESET_TRACKER = 28,
		VT_MOUNTING_RESET_TRACKER = 30
	}

	## Initialize the OSCTrackersSetting with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OSCTrackersSetting data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_float(verifier, VT_FULL_RESET_DELAY, 4)
			and verify_field_u8(verifier, VT_FULL_RESET_ENABLED, 1)
			and verify_field_u8(verifier, VT_FULL_RESET_TAPS, 1)
			and verify_field_float(verifier, VT_YAW_RESET_DELAY, 4)
			and verify_field_u8(verifier, VT_YAW_RESET_ENABLED, 1)
			and verify_field_u8(verifier, VT_YAW_RESET_TAPS, 1)
			and verify_field_float(verifier, VT_MOUNTING_RESET_DELAY, 4)
			and verify_field_u8(verifier, VT_MOUNTING_RESET_ENABLED, 1)
			and verify_field_u8(verifier, VT_MOUNTING_RESET_TAPS, 1)
			and verify_field_u8(verifier, VT_SETUP_MODE, 1)
			and verify_field_u8(verifier, VT_NUMBER_TRACKERS_OVER_THRESHOLD, 1)
			and verify_field_u8(verifier, VT_YAW_RESET_TRACKER, 1)
			and verify_field_u8(verifier, VT_FULL_RESET_TRACKER, 1)
			and verify_field_u8(verifier, VT_MOUNTING_RESET_TRACKER, 1)
			and verify_end_table(verifier)
		)

	## Return true if full_reset_delay is present in the buffer, else false
	func full_reset_delay_is_present() -> bool:
		return get_field_offset( VT_FULL_RESET_DELAY )

	func full_reset_delay() -> float:
		var field_start: int = get_inline_field_start( VT_FULL_RESET_DELAY )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if full_reset_enabled is present in the buffer, else false
	func full_reset_enabled_is_present() -> bool:
		return get_field_offset( VT_FULL_RESET_ENABLED )

	func full_reset_enabled() -> bool:
		var field_start: int = get_inline_field_start( VT_FULL_RESET_ENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if full_reset_taps is present in the buffer, else false
	func full_reset_taps_is_present() -> bool:
		return get_field_offset( VT_FULL_RESET_TAPS )

	func full_reset_taps() -> int:
		var field_start: int = get_inline_field_start( VT_FULL_RESET_TAPS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if yaw_reset_delay is present in the buffer, else false
	func yaw_reset_delay_is_present() -> bool:
		return get_field_offset( VT_YAW_RESET_DELAY )

	func yaw_reset_delay() -> float:
		var field_start: int = get_inline_field_start( VT_YAW_RESET_DELAY )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if yaw_reset_enabled is present in the buffer, else false
	func yaw_reset_enabled_is_present() -> bool:
		return get_field_offset( VT_YAW_RESET_ENABLED )

	func yaw_reset_enabled() -> bool:
		var field_start: int = get_inline_field_start( VT_YAW_RESET_ENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if yaw_reset_taps is present in the buffer, else false
	func yaw_reset_taps_is_present() -> bool:
		return get_field_offset( VT_YAW_RESET_TAPS )

	func yaw_reset_taps() -> int:
		var field_start: int = get_inline_field_start( VT_YAW_RESET_TAPS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if mounting_reset_delay is present in the buffer, else false
	func mounting_reset_delay_is_present() -> bool:
		return get_field_offset( VT_MOUNTING_RESET_DELAY )

	func mounting_reset_delay() -> float:
		var field_start: int = get_inline_field_start( VT_MOUNTING_RESET_DELAY )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if mounting_reset_enabled is present in the buffer, else false
	func mounting_reset_enabled_is_present() -> bool:
		return get_field_offset( VT_MOUNTING_RESET_ENABLED )

	func mounting_reset_enabled() -> bool:
		var field_start: int = get_inline_field_start( VT_MOUNTING_RESET_ENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if mounting_reset_taps is present in the buffer, else false
	func mounting_reset_taps_is_present() -> bool:
		return get_field_offset( VT_MOUNTING_RESET_TAPS )

	func mounting_reset_taps() -> int:
		var field_start: int = get_inline_field_start( VT_MOUNTING_RESET_TAPS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if setup_mode is present in the buffer, else false
	func setup_mode_is_present() -> bool:
		return get_field_offset( VT_SETUP_MODE )

	func setup_mode() -> bool:
		var field_start: int = get_inline_field_start( VT_SETUP_MODE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if number_trackers_over_threshold is present in the buffer, else false
	func number_trackers_over_threshold_is_present() -> bool:
		return get_field_offset( VT_NUMBER_TRACKERS_OVER_THRESHOLD )

	func number_trackers_over_threshold() -> int:
		var field_start: int = get_inline_field_start( VT_NUMBER_TRACKERS_OVER_THRESHOLD )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if yaw_reset_tracker is present in the buffer, else false
	func yaw_reset_tracker_is_present() -> bool:
		return get_field_offset( VT_YAW_RESET_TRACKER )

	func yaw_reset_tracker() -> BodyPart:
		var field_start: int = get_inline_field_start( VT_YAW_RESET_TRACKER )
		if not field_start: return 0 as BodyPart
		var decoded: BodyPart = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if full_reset_tracker is present in the buffer, else false
	func full_reset_tracker_is_present() -> bool:
		return get_field_offset( VT_FULL_RESET_TRACKER )

	func full_reset_tracker() -> BodyPart:
		var field_start: int = get_inline_field_start( VT_FULL_RESET_TRACKER )
		if not field_start: return 0 as BodyPart
		var decoded: BodyPart = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if mounting_reset_tracker is present in the buffer, else false
	func mounting_reset_tracker_is_present() -> bool:
		return get_field_offset( VT_MOUNTING_RESET_TRACKER )

	func mounting_reset_tracker() -> BodyPart:
		var field_start: int = get_inline_field_start( VT_MOUNTING_RESET_TRACKER )
		if not field_start: return 0 as BodyPart
		var decoded: BodyPart = _fb_bytes.decode_u8( field_start )
		return decoded


## Builder class for TapDetectionSettings
class TapDetectionSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the full_reset_delay field to the TapDetectionSettings table
	func add_full_reset_delay( full_reset_delay: float ) -> void:
		fbb_.add_element_float_default( TapDetectionSettings.VT_FULL_RESET_DELAY, full_reset_delay, 0.0 )

	## Add the full_reset_enabled field to the TapDetectionSettings table
	func add_full_reset_enabled( full_reset_enabled: bool ) -> void:
		fbb_.add_element_bool_default( TapDetectionSettings.VT_FULL_RESET_ENABLED, full_reset_enabled, 0 )

	## Add the full_reset_taps field to the TapDetectionSettings table
	func add_full_reset_taps( full_reset_taps: int ) -> void:
		fbb_.add_element_ubyte_default( TapDetectionSettings.VT_FULL_RESET_TAPS, full_reset_taps, 0 )

	## Add the yaw_reset_delay field to the TapDetectionSettings table
	func add_yaw_reset_delay( yaw_reset_delay: float ) -> void:
		fbb_.add_element_float_default( TapDetectionSettings.VT_YAW_RESET_DELAY, yaw_reset_delay, 0.0 )

	## Add the yaw_reset_enabled field to the TapDetectionSettings table
	func add_yaw_reset_enabled( yaw_reset_enabled: bool ) -> void:
		fbb_.add_element_bool_default( TapDetectionSettings.VT_YAW_RESET_ENABLED, yaw_reset_enabled, 0 )

	## Add the yaw_reset_taps field to the TapDetectionSettings table
	func add_yaw_reset_taps( yaw_reset_taps: int ) -> void:
		fbb_.add_element_ubyte_default( TapDetectionSettings.VT_YAW_RESET_TAPS, yaw_reset_taps, 0 )

	## Add the mounting_reset_delay field to the TapDetectionSettings table
	func add_mounting_reset_delay( mounting_reset_delay: float ) -> void:
		fbb_.add_element_float_default( TapDetectionSettings.VT_MOUNTING_RESET_DELAY, mounting_reset_delay, 0.0 )

	## Add the mounting_reset_enabled field to the TapDetectionSettings table
	func add_mounting_reset_enabled( mounting_reset_enabled: bool ) -> void:
		fbb_.add_element_bool_default( TapDetectionSettings.VT_MOUNTING_RESET_ENABLED, mounting_reset_enabled, 0 )

	## Add the mounting_reset_taps field to the TapDetectionSettings table
	func add_mounting_reset_taps( mounting_reset_taps: int ) -> void:
		fbb_.add_element_ubyte_default( TapDetectionSettings.VT_MOUNTING_RESET_TAPS, mounting_reset_taps, 0 )

	## Add the setup_mode field to the TapDetectionSettings table
	func add_setup_mode( setup_mode: bool ) -> void:
		fbb_.add_element_bool_default( TapDetectionSettings.VT_SETUP_MODE, setup_mode, 0 )

	## Add the number_trackers_over_threshold field to the TapDetectionSettings table
	func add_number_trackers_over_threshold( number_trackers_over_threshold: int ) -> void:
		fbb_.add_element_ubyte_default( TapDetectionSettings.VT_NUMBER_TRACKERS_OVER_THRESHOLD, number_trackers_over_threshold, 0 )

	## Add the yaw_reset_tracker field to the TapDetectionSettings table
	func add_yaw_reset_tracker( yaw_reset_tracker: BodyPart ) -> void:
		fbb_.add_element_ubyte( TapDetectionSettings.VT_YAW_RESET_TRACKER, yaw_reset_tracker )

	## Add the full_reset_tracker field to the TapDetectionSettings table
	func add_full_reset_tracker( full_reset_tracker: BodyPart ) -> void:
		fbb_.add_element_ubyte( TapDetectionSettings.VT_FULL_RESET_TRACKER, full_reset_tracker )

	## Add the mounting_reset_tracker field to the TapDetectionSettings table
	func add_mounting_reset_tracker( mounting_reset_tracker: BodyPart ) -> void:
		fbb_.add_element_ubyte( TapDetectionSettings.VT_MOUNTING_RESET_TRACKER, mounting_reset_tracker )

	## Finish building the TapDetectionSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TapDetectionSettings table in one go using the provided [param _fbb]
static func create_TapDetectionSettings( _fbb: FlatBufferBuilder,
		full_reset_delay: float,
		full_reset_enabled: bool,
		full_reset_taps: int,
		yaw_reset_delay: float,
		yaw_reset_enabled: bool,
		yaw_reset_taps: int,
		mounting_reset_delay: float,
		mounting_reset_enabled: bool,
		mounting_reset_taps: int,
		setup_mode: bool,
		number_trackers_over_threshold: int,
		yaw_reset_tracker: BodyPart,
		full_reset_tracker: BodyPart,
		mounting_reset_tracker: BodyPart ) -> int :
	var builder: TapDetectionSettingsBuilder = TapDetectionSettingsBuilder.new( _fbb );
	builder.add_mounting_reset_delay( mounting_reset_delay );
	builder.add_yaw_reset_delay( yaw_reset_delay );
	builder.add_full_reset_delay( full_reset_delay );
	builder.add_mounting_reset_tracker( mounting_reset_tracker );
	builder.add_full_reset_tracker( full_reset_tracker );
	builder.add_yaw_reset_tracker( yaw_reset_tracker );
	builder.add_number_trackers_over_threshold( number_trackers_over_threshold );
	builder.add_setup_mode( setup_mode );
	builder.add_mounting_reset_taps( mounting_reset_taps );
	builder.add_mounting_reset_enabled( mounting_reset_enabled );
	builder.add_yaw_reset_taps( yaw_reset_taps );
	builder.add_yaw_reset_enabled( yaw_reset_enabled );
	builder.add_full_reset_taps( full_reset_taps );
	builder.add_full_reset_enabled( full_reset_enabled );
	return builder.finish();

class ResetsSettings extends FlatBuffer:

	enum {
		VT_RESET_MOUNTING_FEET = 4,
		VT_ARMS_MOUNTING_RESET_MODE = 6,
		VT_YAW_RESET_SMOOTH_TIME = 8,
		VT_SAVE_MOUNTING_RESET = 10,
		VT_RESET_HMD_PITCH = 12
	}

	## Initialize the TapDetectionSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TapDetectionSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_RESET_MOUNTING_FEET, 1)
			and verify_field_u8(verifier, VT_ARMS_MOUNTING_RESET_MODE, 1)
			and verify_field_float(verifier, VT_YAW_RESET_SMOOTH_TIME, 4)
			and verify_field_u8(verifier, VT_SAVE_MOUNTING_RESET, 1)
			and verify_field_u8(verifier, VT_RESET_HMD_PITCH, 1)
			and verify_end_table(verifier)
		)

	## Return true if reset_mounting_feet is present in the buffer, else false
	func reset_mounting_feet_is_present() -> bool:
		return get_field_offset( VT_RESET_MOUNTING_FEET )

	func reset_mounting_feet() -> bool:
		var field_start: int = get_inline_field_start( VT_RESET_MOUNTING_FEET )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if arms_mounting_reset_mode is present in the buffer, else false
	func arms_mounting_reset_mode_is_present() -> bool:
		return get_field_offset( VT_ARMS_MOUNTING_RESET_MODE )

	func arms_mounting_reset_mode() -> ArmsMountingResetMode:
		var field_start: int = get_inline_field_start( VT_ARMS_MOUNTING_RESET_MODE )
		if not field_start: return 0 as ArmsMountingResetMode
		var decoded: ArmsMountingResetMode = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if yaw_reset_smooth_time is present in the buffer, else false
	func yaw_reset_smooth_time_is_present() -> bool:
		return get_field_offset( VT_YAW_RESET_SMOOTH_TIME )

	func yaw_reset_smooth_time() -> float:
		var field_start: int = get_inline_field_start( VT_YAW_RESET_SMOOTH_TIME )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if save_mounting_reset is present in the buffer, else false
	func save_mounting_reset_is_present() -> bool:
		return get_field_offset( VT_SAVE_MOUNTING_RESET )

	func save_mounting_reset() -> bool:
		var field_start: int = get_inline_field_start( VT_SAVE_MOUNTING_RESET )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if reset_hmd_pitch is present in the buffer, else false
	func reset_hmd_pitch_is_present() -> bool:
		return get_field_offset( VT_RESET_HMD_PITCH )

	func reset_hmd_pitch() -> bool:
		var field_start: int = get_inline_field_start( VT_RESET_HMD_PITCH )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for ResetsSettings
class ResetsSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the reset_mounting_feet field to the ResetsSettings table
	func add_reset_mounting_feet( reset_mounting_feet: bool ) -> void:
		fbb_.add_element_bool_default( ResetsSettings.VT_RESET_MOUNTING_FEET, reset_mounting_feet, 0 )

	## Add the arms_mounting_reset_mode field to the ResetsSettings table
	func add_arms_mounting_reset_mode( arms_mounting_reset_mode: ArmsMountingResetMode ) -> void:
		fbb_.add_element_ubyte( ResetsSettings.VT_ARMS_MOUNTING_RESET_MODE, arms_mounting_reset_mode )

	## Add the yaw_reset_smooth_time field to the ResetsSettings table
	func add_yaw_reset_smooth_time( yaw_reset_smooth_time: float ) -> void:
		fbb_.add_element_float_default( ResetsSettings.VT_YAW_RESET_SMOOTH_TIME, yaw_reset_smooth_time, 0.0 )

	## Add the save_mounting_reset field to the ResetsSettings table
	func add_save_mounting_reset( save_mounting_reset: bool ) -> void:
		fbb_.add_element_bool_default( ResetsSettings.VT_SAVE_MOUNTING_RESET, save_mounting_reset, 0 )

	## Add the reset_hmd_pitch field to the ResetsSettings table
	func add_reset_hmd_pitch( reset_hmd_pitch: bool ) -> void:
		fbb_.add_element_bool_default( ResetsSettings.VT_RESET_HMD_PITCH, reset_hmd_pitch, 0 )

	## Finish building the ResetsSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ResetsSettings table in one go using the provided [param _fbb]
static func create_ResetsSettings( _fbb: FlatBufferBuilder,
		reset_mounting_feet: bool,
		arms_mounting_reset_mode: ArmsMountingResetMode,
		yaw_reset_smooth_time: float,
		save_mounting_reset: bool,
		reset_hmd_pitch: bool ) -> int :
	var builder: ResetsSettingsBuilder = ResetsSettingsBuilder.new( _fbb );
	builder.add_yaw_reset_smooth_time( yaw_reset_smooth_time );
	builder.add_reset_hmd_pitch( reset_hmd_pitch );
	builder.add_save_mounting_reset( save_mounting_reset );
	builder.add_arms_mounting_reset_mode( arms_mounting_reset_mode );
	builder.add_reset_mounting_feet( reset_mounting_feet );
	return builder.finish();

class StayAlignedSettings extends FlatBuffer:

	enum {
		VT_ENABLED = 4,
		VT_EXTRAYAWCORRECTION = 6,
		VT_HIDEYAWCORRECTION = 8,
		VT_STANDINGENABLED = 10,
		VT_STANDINGUPPERLEGANGLE = 12,
		VT_STANDINGLOWERLEGANGLE = 14,
		VT_STANDINGFOOTANGLE = 16,
		VT_SITTINGENABLED = 18,
		VT_SITTINGUPPERLEGANGLE = 20,
		VT_SITTINGLOWERLEGANGLE = 22,
		VT_SITTINGFOOTANGLE = 24,
		VT_FLATENABLED = 26,
		VT_FLATUPPERLEGANGLE = 28,
		VT_FLATLOWERLEGANGLE = 30,
		VT_FLATFOOTANGLE = 32,
		VT_SETUPCOMPLETE = 34
	}

	## Initialize the ResetsSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ResetsSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_ENABLED, 1)
			and verify_field_u8(verifier, VT_EXTRAYAWCORRECTION, 1)
			and verify_field_u8(verifier, VT_HIDEYAWCORRECTION, 1)
			and verify_field_u8(verifier, VT_STANDINGENABLED, 1)
			and verify_field_float(verifier, VT_STANDINGUPPERLEGANGLE, 4)
			and verify_field_float(verifier, VT_STANDINGLOWERLEGANGLE, 4)
			and verify_field_float(verifier, VT_STANDINGFOOTANGLE, 4)
			and verify_field_u8(verifier, VT_SITTINGENABLED, 1)
			and verify_field_float(verifier, VT_SITTINGUPPERLEGANGLE, 4)
			and verify_field_float(verifier, VT_SITTINGLOWERLEGANGLE, 4)
			and verify_field_float(verifier, VT_SITTINGFOOTANGLE, 4)
			and verify_field_u8(verifier, VT_FLATENABLED, 1)
			and verify_field_float(verifier, VT_FLATUPPERLEGANGLE, 4)
			and verify_field_float(verifier, VT_FLATLOWERLEGANGLE, 4)
			and verify_field_float(verifier, VT_FLATFOOTANGLE, 4)
			and verify_field_u8(verifier, VT_SETUPCOMPLETE, 1)
			and verify_end_table(verifier)
		)

	## Return true if enabled is present in the buffer, else false
	func enabled_is_present() -> bool:
		return get_field_offset( VT_ENABLED )

	func enabled() -> bool:
		var field_start: int = get_inline_field_start( VT_ENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if extraYawCorrection is present in the buffer, else false
	func extraYawCorrection_is_present() -> bool:
		return get_field_offset( VT_EXTRAYAWCORRECTION )

	func extraYawCorrection() -> bool:
		var field_start: int = get_inline_field_start( VT_EXTRAYAWCORRECTION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if hideYawCorrection is present in the buffer, else false
	func hideYawCorrection_is_present() -> bool:
		return get_field_offset( VT_HIDEYAWCORRECTION )

	func hideYawCorrection() -> bool:
		var field_start: int = get_inline_field_start( VT_HIDEYAWCORRECTION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if standingEnabled is present in the buffer, else false
	func standingEnabled_is_present() -> bool:
		return get_field_offset( VT_STANDINGENABLED )

	func standingEnabled() -> bool:
		var field_start: int = get_inline_field_start( VT_STANDINGENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if standingUpperLegAngle is present in the buffer, else false
	func standingUpperLegAngle_is_present() -> bool:
		return get_field_offset( VT_STANDINGUPPERLEGANGLE )

	func standingUpperLegAngle() -> float:
		var field_start: int = get_inline_field_start( VT_STANDINGUPPERLEGANGLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if standingLowerLegAngle is present in the buffer, else false
	func standingLowerLegAngle_is_present() -> bool:
		return get_field_offset( VT_STANDINGLOWERLEGANGLE )

	func standingLowerLegAngle() -> float:
		var field_start: int = get_inline_field_start( VT_STANDINGLOWERLEGANGLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if standingFootAngle is present in the buffer, else false
	func standingFootAngle_is_present() -> bool:
		return get_field_offset( VT_STANDINGFOOTANGLE )

	func standingFootAngle() -> float:
		var field_start: int = get_inline_field_start( VT_STANDINGFOOTANGLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if sittingEnabled is present in the buffer, else false
	func sittingEnabled_is_present() -> bool:
		return get_field_offset( VT_SITTINGENABLED )

	func sittingEnabled() -> bool:
		var field_start: int = get_inline_field_start( VT_SITTINGENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if sittingUpperLegAngle is present in the buffer, else false
	func sittingUpperLegAngle_is_present() -> bool:
		return get_field_offset( VT_SITTINGUPPERLEGANGLE )

	func sittingUpperLegAngle() -> float:
		var field_start: int = get_inline_field_start( VT_SITTINGUPPERLEGANGLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if sittingLowerLegAngle is present in the buffer, else false
	func sittingLowerLegAngle_is_present() -> bool:
		return get_field_offset( VT_SITTINGLOWERLEGANGLE )

	func sittingLowerLegAngle() -> float:
		var field_start: int = get_inline_field_start( VT_SITTINGLOWERLEGANGLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if sittingFootAngle is present in the buffer, else false
	func sittingFootAngle_is_present() -> bool:
		return get_field_offset( VT_SITTINGFOOTANGLE )

	func sittingFootAngle() -> float:
		var field_start: int = get_inline_field_start( VT_SITTINGFOOTANGLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if flatEnabled is present in the buffer, else false
	func flatEnabled_is_present() -> bool:
		return get_field_offset( VT_FLATENABLED )

	func flatEnabled() -> bool:
		var field_start: int = get_inline_field_start( VT_FLATENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if flatUpperLegAngle is present in the buffer, else false
	func flatUpperLegAngle_is_present() -> bool:
		return get_field_offset( VT_FLATUPPERLEGANGLE )

	func flatUpperLegAngle() -> float:
		var field_start: int = get_inline_field_start( VT_FLATUPPERLEGANGLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if flatLowerLegAngle is present in the buffer, else false
	func flatLowerLegAngle_is_present() -> bool:
		return get_field_offset( VT_FLATLOWERLEGANGLE )

	func flatLowerLegAngle() -> float:
		var field_start: int = get_inline_field_start( VT_FLATLOWERLEGANGLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if flatFootAngle is present in the buffer, else false
	func flatFootAngle_is_present() -> bool:
		return get_field_offset( VT_FLATFOOTANGLE )

	func flatFootAngle() -> float:
		var field_start: int = get_inline_field_start( VT_FLATFOOTANGLE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if setupComplete is present in the buffer, else false
	func setupComplete_is_present() -> bool:
		return get_field_offset( VT_SETUPCOMPLETE )

	func setupComplete() -> bool:
		var field_start: int = get_inline_field_start( VT_SETUPCOMPLETE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for StayAlignedSettings
class StayAlignedSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the enabled field to the StayAlignedSettings table
	func add_enabled( enabled: bool ) -> void:
		fbb_.add_element_bool_default( StayAlignedSettings.VT_ENABLED, enabled, 0 )

	## Add the extraYawCorrection field to the StayAlignedSettings table
	func add_extraYawCorrection( extraYawCorrection: bool ) -> void:
		fbb_.add_element_bool_default( StayAlignedSettings.VT_EXTRAYAWCORRECTION, extraYawCorrection, 0 )

	## Add the hideYawCorrection field to the StayAlignedSettings table
	func add_hideYawCorrection( hideYawCorrection: bool ) -> void:
		fbb_.add_element_bool_default( StayAlignedSettings.VT_HIDEYAWCORRECTION, hideYawCorrection, 0 )

	## Add the standingEnabled field to the StayAlignedSettings table
	func add_standingEnabled( standingEnabled: bool ) -> void:
		fbb_.add_element_bool_default( StayAlignedSettings.VT_STANDINGENABLED, standingEnabled, 0 )

	## Add the standingUpperLegAngle field to the StayAlignedSettings table
	func add_standingUpperLegAngle( standingUpperLegAngle: float ) -> void:
		fbb_.add_element_float_default( StayAlignedSettings.VT_STANDINGUPPERLEGANGLE, standingUpperLegAngle, 0.0 )

	## Add the standingLowerLegAngle field to the StayAlignedSettings table
	func add_standingLowerLegAngle( standingLowerLegAngle: float ) -> void:
		fbb_.add_element_float_default( StayAlignedSettings.VT_STANDINGLOWERLEGANGLE, standingLowerLegAngle, 0.0 )

	## Add the standingFootAngle field to the StayAlignedSettings table
	func add_standingFootAngle( standingFootAngle: float ) -> void:
		fbb_.add_element_float_default( StayAlignedSettings.VT_STANDINGFOOTANGLE, standingFootAngle, 0.0 )

	## Add the sittingEnabled field to the StayAlignedSettings table
	func add_sittingEnabled( sittingEnabled: bool ) -> void:
		fbb_.add_element_bool_default( StayAlignedSettings.VT_SITTINGENABLED, sittingEnabled, 0 )

	## Add the sittingUpperLegAngle field to the StayAlignedSettings table
	func add_sittingUpperLegAngle( sittingUpperLegAngle: float ) -> void:
		fbb_.add_element_float_default( StayAlignedSettings.VT_SITTINGUPPERLEGANGLE, sittingUpperLegAngle, 0.0 )

	## Add the sittingLowerLegAngle field to the StayAlignedSettings table
	func add_sittingLowerLegAngle( sittingLowerLegAngle: float ) -> void:
		fbb_.add_element_float_default( StayAlignedSettings.VT_SITTINGLOWERLEGANGLE, sittingLowerLegAngle, 0.0 )

	## Add the sittingFootAngle field to the StayAlignedSettings table
	func add_sittingFootAngle( sittingFootAngle: float ) -> void:
		fbb_.add_element_float_default( StayAlignedSettings.VT_SITTINGFOOTANGLE, sittingFootAngle, 0.0 )

	## Add the flatEnabled field to the StayAlignedSettings table
	func add_flatEnabled( flatEnabled: bool ) -> void:
		fbb_.add_element_bool_default( StayAlignedSettings.VT_FLATENABLED, flatEnabled, 0 )

	## Add the flatUpperLegAngle field to the StayAlignedSettings table
	func add_flatUpperLegAngle( flatUpperLegAngle: float ) -> void:
		fbb_.add_element_float_default( StayAlignedSettings.VT_FLATUPPERLEGANGLE, flatUpperLegAngle, 0.0 )

	## Add the flatLowerLegAngle field to the StayAlignedSettings table
	func add_flatLowerLegAngle( flatLowerLegAngle: float ) -> void:
		fbb_.add_element_float_default( StayAlignedSettings.VT_FLATLOWERLEGANGLE, flatLowerLegAngle, 0.0 )

	## Add the flatFootAngle field to the StayAlignedSettings table
	func add_flatFootAngle( flatFootAngle: float ) -> void:
		fbb_.add_element_float_default( StayAlignedSettings.VT_FLATFOOTANGLE, flatFootAngle, 0.0 )

	## Add the setupComplete field to the StayAlignedSettings table
	func add_setupComplete( setupComplete: bool ) -> void:
		fbb_.add_element_bool_default( StayAlignedSettings.VT_SETUPCOMPLETE, setupComplete, 0 )

	## Finish building the StayAlignedSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StayAlignedSettings table in one go using the provided [param _fbb]
static func create_StayAlignedSettings( _fbb: FlatBufferBuilder,
		enabled: bool,
		extraYawCorrection: bool,
		hideYawCorrection: bool,
		standingEnabled: bool,
		standingUpperLegAngle: float,
		standingLowerLegAngle: float,
		standingFootAngle: float,
		sittingEnabled: bool,
		sittingUpperLegAngle: float,
		sittingLowerLegAngle: float,
		sittingFootAngle: float,
		flatEnabled: bool,
		flatUpperLegAngle: float,
		flatLowerLegAngle: float,
		flatFootAngle: float,
		setupComplete: bool ) -> int :
	var builder: StayAlignedSettingsBuilder = StayAlignedSettingsBuilder.new( _fbb );
	builder.add_flatFootAngle( flatFootAngle );
	builder.add_flatLowerLegAngle( flatLowerLegAngle );
	builder.add_flatUpperLegAngle( flatUpperLegAngle );
	builder.add_sittingFootAngle( sittingFootAngle );
	builder.add_sittingLowerLegAngle( sittingLowerLegAngle );
	builder.add_sittingUpperLegAngle( sittingUpperLegAngle );
	builder.add_standingFootAngle( standingFootAngle );
	builder.add_standingLowerLegAngle( standingLowerLegAngle );
	builder.add_standingUpperLegAngle( standingUpperLegAngle );
	builder.add_setupComplete( setupComplete );
	builder.add_flatEnabled( flatEnabled );
	builder.add_sittingEnabled( sittingEnabled );
	builder.add_standingEnabled( standingEnabled );
	builder.add_hideYawCorrection( hideYawCorrection );
	builder.add_extraYawCorrection( extraYawCorrection );
	builder.add_enabled( enabled );
	return builder.finish();

class HIDSettings extends FlatBuffer:

	enum {
		VT_TRACKERSOVERHID = 4
	}

	## Initialize the StayAlignedSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StayAlignedSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_TRACKERSOVERHID, 1)
			and verify_end_table(verifier)
		)

	## Return true if trackersOverHID is present in the buffer, else false
	func trackersOverHID_is_present() -> bool:
		return get_field_offset( VT_TRACKERSOVERHID )

	func trackersOverHID() -> bool:
		var field_start: int = get_inline_field_start( VT_TRACKERSOVERHID )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for HIDSettings
class HIDSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the trackersOverHID field to the HIDSettings table
	func add_trackersOverHID( trackersOverHID: bool ) -> void:
		fbb_.add_element_bool_default( HIDSettings.VT_TRACKERSOVERHID, trackersOverHID, 0 )

	## Finish building the HIDSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a HIDSettings table in one go using the provided [param _fbb]
static func create_HIDSettings( _fbb: FlatBufferBuilder,
		trackersOverHID: bool ) -> int :
	var builder: HIDSettingsBuilder = HIDSettingsBuilder.new( _fbb );
	builder.add_trackersOverHID( trackersOverHID );
	return builder.finish();

class TimeoutSettings extends FlatBuffer:

	enum {
		VT_DURATION = 4
	}

	## Initialize the HIDSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the HIDSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_float(verifier, VT_DURATION, 4)
			and verify_end_table(verifier)
		)

	## Return true if duration is present in the buffer, else false
	func duration_is_present() -> bool:
		return get_field_offset( VT_DURATION )

	func duration() -> float:
		var field_start: int = get_inline_field_start( VT_DURATION )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for TimeoutSettings
class TimeoutSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the duration field to the TimeoutSettings table
	func add_duration( duration: float ) -> void:
		fbb_.add_element_float_default( TimeoutSettings.VT_DURATION, duration, 0.0 )

	## Finish building the TimeoutSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TimeoutSettings table in one go using the provided [param _fbb]
static func create_TimeoutSettings( _fbb: FlatBufferBuilder,
		duration: float ) -> int :
	var builder: TimeoutSettingsBuilder = TimeoutSettingsBuilder.new( _fbb );
	builder.add_duration( duration );
	return builder.finish();

class VelocitySettings extends FlatBuffer:

	enum {
		VT_SEND_DERIVED_VELOCITY = 4
	}

	## Initialize the TimeoutSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TimeoutSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_SEND_DERIVED_VELOCITY, 1)
			and verify_end_table(verifier)
		)

	## Return true if send_derived_velocity is present in the buffer, else false
	func send_derived_velocity_is_present() -> bool:
		return get_field_offset( VT_SEND_DERIVED_VELOCITY )

	func send_derived_velocity() -> bool:
		var field_start: int = get_inline_field_start( VT_SEND_DERIVED_VELOCITY )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for VelocitySettings
class VelocitySettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the send_derived_velocity field to the VelocitySettings table
	func add_send_derived_velocity( send_derived_velocity: bool ) -> void:
		fbb_.add_element_bool_default( VelocitySettings.VT_SEND_DERIVED_VELOCITY, send_derived_velocity, 0 )

	## Finish building the VelocitySettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VelocitySettings table in one go using the provided [param _fbb]
static func create_VelocitySettings( _fbb: FlatBufferBuilder,
		send_derived_velocity: bool ) -> int :
	var builder: VelocitySettingsBuilder = VelocitySettingsBuilder.new( _fbb );
	builder.add_send_derived_velocity( send_derived_velocity );
	return builder.finish();

class TapDetectionSetupNotification extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4
	}

	## Initialize the VelocitySettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VelocitySettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and tracker_id().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id() -> SolarXR.TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not field_start: return null
		return SolarXR.TrackerId.new( _fb_bytes, field_start )


## Builder class for TapDetectionSetupNotification
class TapDetectionSetupNotificationBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the TapDetectionSetupNotification table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( TapDetectionSetupNotification.VT_TRACKER_ID, tracker_id_offset )

	## Finish building the TapDetectionSetupNotification table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TapDetectionSetupNotification table in one go using the provided [param _fbb]
static func create_TapDetectionSetupNotification( _fbb: FlatBufferBuilder,
		tracker_id: int ) -> int :
	var builder: TapDetectionSetupNotificationBuilder = TapDetectionSetupNotificationBuilder.new( _fbb );
	builder.add_tracker_id( tracker_id );
	return builder.finish();

class RecordBVHRequest extends FlatBuffer:

	enum {
		VT_STOP = 4,
		VT_PATH = 6
	}

	## Initialize the TapDetectionSetupNotification with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TapDetectionSetupNotification data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_STOP, 1)
			and verify_offset(verifier, VT_PATH)
			and verify_string( verifier, VT_PATH )
			and verify_end_table(verifier)
		)

	## Return true if stop is present in the buffer, else false
	func stop_is_present() -> bool:
		return get_field_offset( VT_STOP )

	func stop() -> bool:
		var field_start: int = get_inline_field_start( VT_STOP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if path is present in the buffer, else false
	func path_is_present() -> bool:
		return get_field_offset( VT_PATH )

	func path() -> String:
		var field_start: int = get_offset_field_start( VT_PATH )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for RecordBVHRequest
class RecordBVHRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the stop field to the RecordBVHRequest table
	func add_stop( stop: bool ) -> void:
		fbb_.add_element_bool_default( RecordBVHRequest.VT_STOP, stop, 0 )

	## Add the path field to the RecordBVHRequest table
	func add_path( path_offset: int ) -> void:
		fbb_.add_offset( RecordBVHRequest.VT_PATH, path_offset )

	## Finish building the RecordBVHRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a RecordBVHRequest table in one go using the provided [param _fbb]
static func create_RecordBVHRequest( _fbb: FlatBufferBuilder,
		stop: bool,
		path: int ) -> int :
	var builder: RecordBVHRequestBuilder = RecordBVHRequestBuilder.new( _fbb );
	builder.add_path( path );
	builder.add_stop( stop );
	return builder.finish();

class RecordBVHStatus extends FlatBuffer:

	enum {
		VT_RECORDING = 4
	}

	## Initialize the RecordBVHRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the RecordBVHRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_RECORDING, 1)
			and verify_end_table(verifier)
		)

	## Return true if recording is present in the buffer, else false
	func recording_is_present() -> bool:
		return get_field_offset( VT_RECORDING )

	func recording() -> bool:
		var field_start: int = get_inline_field_start( VT_RECORDING )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for RecordBVHStatus
class RecordBVHStatusBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the recording field to the RecordBVHStatus table
	func add_recording( recording: bool ) -> void:
		fbb_.add_element_bool_default( RecordBVHStatus.VT_RECORDING, recording, 0 )

	## Finish building the RecordBVHStatus table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a RecordBVHStatus table in one go using the provided [param _fbb]
static func create_RecordBVHStatus( _fbb: FlatBufferBuilder,
		recording: bool ) -> int :
	var builder: RecordBVHStatusBuilder = RecordBVHStatusBuilder.new( _fbb );
	builder.add_recording( recording );
	return builder.finish();

class RecordBVHStatusRequest extends FlatBuffer:


	## Initialize the RecordBVHStatus with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the RecordBVHStatus data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for RecordBVHStatusRequest
class RecordBVHStatusRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the RecordBVHStatusRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a RecordBVHStatusRequest table in one go using the provided [param _fbb]
static func create_RecordBVHStatusRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: RecordBVHStatusRequestBuilder = RecordBVHStatusRequestBuilder.new( _fbb );
	return builder.finish();

class SkeletonPart extends FlatBuffer:

	enum {
		VT_BONE = 4,
		VT_VALUE = 6
	}

	## Initialize the RecordBVHStatusRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the RecordBVHStatusRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_BONE, 1)
			and verify_field_float(verifier, VT_VALUE, 4)
			and verify_end_table(verifier)
		)

	## Return true if bone is present in the buffer, else false
	func bone_is_present() -> bool:
		return get_field_offset( VT_BONE )

	func bone() -> SkeletonBone:
		var field_start: int = get_inline_field_start( VT_BONE )
		if not field_start: return 0 as SkeletonBone
		var decoded: SkeletonBone = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if value is present in the buffer, else false
	func value_is_present() -> bool:
		return get_field_offset( VT_VALUE )

	func value() -> float:
		var field_start: int = get_inline_field_start( VT_VALUE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for SkeletonPart
class SkeletonPartBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the bone field to the SkeletonPart table
	func add_bone( bone: SkeletonBone ) -> void:
		fbb_.add_element_ubyte( SkeletonPart.VT_BONE, bone )

	## Add the value field to the SkeletonPart table
	func add_value( value: float ) -> void:
		fbb_.add_element_float_default( SkeletonPart.VT_VALUE, value, 0.0 )

	## Finish building the SkeletonPart table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SkeletonPart table in one go using the provided [param _fbb]
static func create_SkeletonPart( _fbb: FlatBufferBuilder,
		bone: SkeletonBone,
		value: float ) -> int :
	var builder: SkeletonPartBuilder = SkeletonPartBuilder.new( _fbb );
	builder.add_value( value );
	builder.add_bone( bone );
	return builder.finish();

class SkeletonConfigRequest extends FlatBuffer:


	## Initialize the SkeletonPart with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SkeletonPart data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for SkeletonConfigRequest
class SkeletonConfigRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the SkeletonConfigRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SkeletonConfigRequest table in one go using the provided [param _fbb]
static func create_SkeletonConfigRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: SkeletonConfigRequestBuilder = SkeletonConfigRequestBuilder.new( _fbb );
	return builder.finish();

class SkeletonConfigResponse extends FlatBuffer:

	enum {
		VT_SKELETON_PARTS = 4,
		VT_USER_HEIGHT = 6
	}

	## Initialize the SkeletonConfigRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SkeletonConfigRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_SKELETON_PARTS)
			and verify_vector_u32(verifier, VT_SKELETON_PARTS)
			and skeleton_parts_verify(verifier)
			and verify_field_float(verifier, VT_USER_HEIGHT, 4)
			and verify_end_table(verifier)
		)

	## Return true if skeleton_parts is present in the buffer, else false
	func skeleton_parts_is_present() -> bool:
		return get_field_offset( VT_SKELETON_PARTS )

	func skeleton_parts_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.SkeletonPart.new()
		for i in skeleton_parts_size():
			if not skeleton_parts_at(i, tmp).verify(verifier):
				return false
		return true

	func skeleton_parts_size() -> int:
		var array_start: int = get_offset_field_start( VT_SKELETON_PARTS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func skeleton_parts_at( idx: int, into: SkeletonPart = null ) -> SkeletonPart:
		var field_start: int = get_offset_field_start( VT_SKELETON_PARTS )
		assert(field_start, 'Field "skeleton_parts" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.SkeletonPart.new( _fb_bytes, element_pos + element_offset )

	func skeleton_parts() -> Array:
		var array_start: int = get_offset_field_start( VT_SKELETON_PARTS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.SkeletonPart.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array

	## Return true if user_height is present in the buffer, else false
	func user_height_is_present() -> bool:
		return get_field_offset( VT_USER_HEIGHT )

	func user_height() -> float:
		var field_start: int = get_inline_field_start( VT_USER_HEIGHT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for SkeletonConfigResponse
class SkeletonConfigResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the skeleton_parts field to the SkeletonConfigResponse table
	func add_skeleton_parts( skeleton_parts_offset: int ) -> void:
		fbb_.add_offset( SkeletonConfigResponse.VT_SKELETON_PARTS, skeleton_parts_offset )

	## Add the user_height field to the SkeletonConfigResponse table
	func add_user_height( user_height: float ) -> void:
		fbb_.add_element_float_default( SkeletonConfigResponse.VT_USER_HEIGHT, user_height, 0.0 )

	## Finish building the SkeletonConfigResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SkeletonConfigResponse table in one go using the provided [param _fbb]
static func create_SkeletonConfigResponse( _fbb: FlatBufferBuilder,
		skeleton_parts: int,
		user_height: float ) -> int :
	var builder: SkeletonConfigResponseBuilder = SkeletonConfigResponseBuilder.new( _fbb );
	builder.add_user_height( user_height );
	builder.add_skeleton_parts( skeleton_parts );
	return builder.finish();

class SkeletonResetAllRequest extends FlatBuffer:


	## Initialize the SkeletonConfigResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SkeletonConfigResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for SkeletonResetAllRequest
class SkeletonResetAllRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the SkeletonResetAllRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SkeletonResetAllRequest table in one go using the provided [param _fbb]
static func create_SkeletonResetAllRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: SkeletonResetAllRequestBuilder = SkeletonResetAllRequestBuilder.new( _fbb );
	return builder.finish();

class ChangeSkeletonConfigRequest extends FlatBuffer:

	enum {
		VT_BONE = 4,
		VT_VALUE = 6
	}

	## Initialize the SkeletonResetAllRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SkeletonResetAllRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_BONE, 1)
			and verify_field_float(verifier, VT_VALUE, 4)
			and verify_end_table(verifier)
		)

	## Return true if bone is present in the buffer, else false
	func bone_is_present() -> bool:
		return get_field_offset( VT_BONE )

	func bone() -> SkeletonBone:
		var field_start: int = get_inline_field_start( VT_BONE )
		if not field_start: return 0 as SkeletonBone
		var decoded: SkeletonBone = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if value is present in the buffer, else false
	func value_is_present() -> bool:
		return get_field_offset( VT_VALUE )

	func value() -> float:
		var field_start: int = get_inline_field_start( VT_VALUE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for ChangeSkeletonConfigRequest
class ChangeSkeletonConfigRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the bone field to the ChangeSkeletonConfigRequest table
	func add_bone( bone: SkeletonBone ) -> void:
		fbb_.add_element_ubyte( ChangeSkeletonConfigRequest.VT_BONE, bone )

	## Add the value field to the ChangeSkeletonConfigRequest table
	func add_value( value: float ) -> void:
		fbb_.add_element_float_default( ChangeSkeletonConfigRequest.VT_VALUE, value, 0.0 )

	## Finish building the ChangeSkeletonConfigRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ChangeSkeletonConfigRequest table in one go using the provided [param _fbb]
static func create_ChangeSkeletonConfigRequest( _fbb: FlatBufferBuilder,
		bone: SkeletonBone,
		value: float ) -> int :
	var builder: ChangeSkeletonConfigRequestBuilder = ChangeSkeletonConfigRequestBuilder.new( _fbb );
	builder.add_value( value );
	builder.add_bone( bone );
	return builder.finish();

class SerialDevice extends FlatBuffer:

	enum {
		VT_PORT = 4,
		VT_NAME = 6,
		VT_TYPE = 8
	}

	## Initialize the ChangeSkeletonConfigRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ChangeSkeletonConfigRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_PORT)
			and verify_string( verifier, VT_PORT )
			and verify_offset(verifier, VT_NAME)
			and verify_string( verifier, VT_NAME )
			and verify_field_u8(verifier, VT_TYPE, 1)
			and verify_end_table(verifier)
		)

	## Return true if port is present in the buffer, else false
	func port_is_present() -> bool:
		return get_field_offset( VT_PORT )

	func port() -> String:
		var field_start: int = get_offset_field_start( VT_PORT )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if name is present in the buffer, else false
	func name_is_present() -> bool:
		return get_field_offset( VT_NAME )

	func name() -> String:
		var field_start: int = get_offset_field_start( VT_NAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if type is present in the buffer, else false
	func type_is_present() -> bool:
		return get_field_offset( VT_TYPE )

	func type() -> SerialDeviceType:
		var field_start: int = get_inline_field_start( VT_TYPE )
		if not field_start: return 0 as SerialDeviceType
		var decoded: SerialDeviceType = _fb_bytes.decode_u8( field_start )
		return decoded


## Builder class for SerialDevice
class SerialDeviceBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the port field to the SerialDevice table
	func add_port( port_offset: int ) -> void:
		fbb_.add_offset( SerialDevice.VT_PORT, port_offset )

	## Add the name field to the SerialDevice table
	func add_name( name_offset: int ) -> void:
		fbb_.add_offset( SerialDevice.VT_NAME, name_offset )

	## Add the type field to the SerialDevice table
	func add_type( type: SerialDeviceType ) -> void:
		fbb_.add_element_ubyte( SerialDevice.VT_TYPE, type )

	## Finish building the SerialDevice table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialDevice table in one go using the provided [param _fbb]
static func create_SerialDevice( _fbb: FlatBufferBuilder,
		port: int,
		name: int,
		type: SerialDeviceType ) -> int :
	var builder: SerialDeviceBuilder = SerialDeviceBuilder.new( _fbb );
	builder.add_name( name );
	builder.add_port( port );
	builder.add_type( type );
	return builder.finish();

class OpenSerialRequest extends FlatBuffer:

	enum {
		VT_AUTO = 4,
		VT_PORT = 6
	}

	## Initialize the SerialDevice with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialDevice data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_AUTO, 1)
			and verify_offset(verifier, VT_PORT)
			and verify_string( verifier, VT_PORT )
			and verify_end_table(verifier)
		)

	## Return true if auto is present in the buffer, else false
	func auto_is_present() -> bool:
		return get_field_offset( VT_AUTO )

	func auto() -> bool:
		var field_start: int = get_inline_field_start( VT_AUTO )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if port is present in the buffer, else false
	func port_is_present() -> bool:
		return get_field_offset( VT_PORT )

	func port() -> String:
		var field_start: int = get_offset_field_start( VT_PORT )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for OpenSerialRequest
class OpenSerialRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the auto field to the OpenSerialRequest table
	func add_auto( auto: bool ) -> void:
		fbb_.add_element_bool_default( OpenSerialRequest.VT_AUTO, auto, 0 )

	## Add the port field to the OpenSerialRequest table
	func add_port( port_offset: int ) -> void:
		fbb_.add_offset( OpenSerialRequest.VT_PORT, port_offset )

	## Finish building the OpenSerialRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OpenSerialRequest table in one go using the provided [param _fbb]
static func create_OpenSerialRequest( _fbb: FlatBufferBuilder,
		auto: bool,
		port: int ) -> int :
	var builder: OpenSerialRequestBuilder = OpenSerialRequestBuilder.new( _fbb );
	builder.add_port( port );
	builder.add_auto( auto );
	return builder.finish();

class CloseSerialRequest extends FlatBuffer:


	## Initialize the OpenSerialRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OpenSerialRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for CloseSerialRequest
class CloseSerialRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the CloseSerialRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a CloseSerialRequest table in one go using the provided [param _fbb]
static func create_CloseSerialRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: CloseSerialRequestBuilder = CloseSerialRequestBuilder.new( _fbb );
	return builder.finish();

class SetWifiRequest extends FlatBuffer:

	enum {
		VT_SSID = 4,
		VT_PASSWORD = 6
	}

	## Initialize the CloseSerialRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the CloseSerialRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_SSID)
			and verify_string( verifier, VT_SSID )
			and verify_offset(verifier, VT_PASSWORD)
			and verify_string( verifier, VT_PASSWORD )
			and verify_end_table(verifier)
		)

	## Return true if ssid is present in the buffer, else false
	func ssid_is_present() -> bool:
		return get_field_offset( VT_SSID )

	func ssid() -> String:
		var field_start: int = get_offset_field_start( VT_SSID )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if password is present in the buffer, else false
	func password_is_present() -> bool:
		return get_field_offset( VT_PASSWORD )

	func password() -> String:
		var field_start: int = get_offset_field_start( VT_PASSWORD )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for SetWifiRequest
class SetWifiRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the ssid field to the SetWifiRequest table
	func add_ssid( ssid_offset: int ) -> void:
		fbb_.add_offset( SetWifiRequest.VT_SSID, ssid_offset )

	## Add the password field to the SetWifiRequest table
	func add_password( password_offset: int ) -> void:
		fbb_.add_offset( SetWifiRequest.VT_PASSWORD, password_offset )

	## Finish building the SetWifiRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SetWifiRequest table in one go using the provided [param _fbb]
static func create_SetWifiRequest( _fbb: FlatBufferBuilder,
		ssid: int,
		password: int ) -> int :
	var builder: SetWifiRequestBuilder = SetWifiRequestBuilder.new( _fbb );
	builder.add_password( password );
	builder.add_ssid( ssid );
	return builder.finish();

class SerialUpdateResponse extends FlatBuffer:

	enum {
		VT_LOG = 4,
		VT_CLOSED = 6,
		VT_DEVICE = 8
	}

	## Initialize the SetWifiRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SetWifiRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_LOG)
			and verify_string( verifier, VT_LOG )
			and verify_field_u8(verifier, VT_CLOSED, 1)
			and verify_offset(verifier, VT_DEVICE)
			and device().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if log is present in the buffer, else false
	func log_is_present() -> bool:
		return get_field_offset( VT_LOG )

	func log() -> String:
		var field_start: int = get_offset_field_start( VT_LOG )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if closed is present in the buffer, else false
	func closed_is_present() -> bool:
		return get_field_offset( VT_CLOSED )

	func closed() -> bool:
		var field_start: int = get_inline_field_start( VT_CLOSED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if device is present in the buffer, else false
	func device_is_present() -> bool:
		return get_field_offset( VT_DEVICE )

	func device() -> SolarXR.SerialDevice:
		var field_start: int = get_offset_field_start( VT_DEVICE )
		if not field_start: return null
		return SolarXR.SerialDevice.new( _fb_bytes, field_start )


## Builder class for SerialUpdateResponse
class SerialUpdateResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the log field to the SerialUpdateResponse table
	func add_log( log_offset: int ) -> void:
		fbb_.add_offset( SerialUpdateResponse.VT_LOG, log_offset )

	## Add the closed field to the SerialUpdateResponse table
	func add_closed( closed: bool ) -> void:
		fbb_.add_element_bool_default( SerialUpdateResponse.VT_CLOSED, closed, 0 )

	## Add the device field to the SerialUpdateResponse table
	func add_device( device_offset: int ) -> void:
		fbb_.add_offset( SerialUpdateResponse.VT_DEVICE, device_offset )

	## Finish building the SerialUpdateResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialUpdateResponse table in one go using the provided [param _fbb]
static func create_SerialUpdateResponse( _fbb: FlatBufferBuilder,
		log: int,
		closed: bool,
		device: int ) -> int :
	var builder: SerialUpdateResponseBuilder = SerialUpdateResponseBuilder.new( _fbb );
	builder.add_device( device );
	builder.add_log( log );
	builder.add_closed( closed );
	return builder.finish();

class SerialTrackerRebootRequest extends FlatBuffer:


	## Initialize the SerialUpdateResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialUpdateResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for SerialTrackerRebootRequest
class SerialTrackerRebootRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the SerialTrackerRebootRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialTrackerRebootRequest table in one go using the provided [param _fbb]
static func create_SerialTrackerRebootRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: SerialTrackerRebootRequestBuilder = SerialTrackerRebootRequestBuilder.new( _fbb );
	return builder.finish();

class SerialTrackerGetInfoRequest extends FlatBuffer:


	## Initialize the SerialTrackerRebootRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialTrackerRebootRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for SerialTrackerGetInfoRequest
class SerialTrackerGetInfoRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the SerialTrackerGetInfoRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialTrackerGetInfoRequest table in one go using the provided [param _fbb]
static func create_SerialTrackerGetInfoRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: SerialTrackerGetInfoRequestBuilder = SerialTrackerGetInfoRequestBuilder.new( _fbb );
	return builder.finish();

class SerialTrackerFactoryResetRequest extends FlatBuffer:


	## Initialize the SerialTrackerGetInfoRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialTrackerGetInfoRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for SerialTrackerFactoryResetRequest
class SerialTrackerFactoryResetRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the SerialTrackerFactoryResetRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialTrackerFactoryResetRequest table in one go using the provided [param _fbb]
static func create_SerialTrackerFactoryResetRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: SerialTrackerFactoryResetRequestBuilder = SerialTrackerFactoryResetRequestBuilder.new( _fbb );
	return builder.finish();

class SerialTrackerCustomCommandRequest extends FlatBuffer:

	enum {
		VT_COMMAND = 4
	}

	## Initialize the SerialTrackerFactoryResetRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialTrackerFactoryResetRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_COMMAND)
			and verify_string( verifier, VT_COMMAND )
			and verify_end_table(verifier)
		)

	## Return true if command is present in the buffer, else false
	func command_is_present() -> bool:
		return get_field_offset( VT_COMMAND )

	func command() -> String:
		var field_start: int = get_offset_field_start( VT_COMMAND )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for SerialTrackerCustomCommandRequest
class SerialTrackerCustomCommandRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the command field to the SerialTrackerCustomCommandRequest table
	func add_command( command_offset: int ) -> void:
		fbb_.add_offset( SerialTrackerCustomCommandRequest.VT_COMMAND, command_offset )

	## Finish building the SerialTrackerCustomCommandRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialTrackerCustomCommandRequest table in one go using the provided [param _fbb]
static func create_SerialTrackerCustomCommandRequest( _fbb: FlatBufferBuilder,
		command: int ) -> int :
	var builder: SerialTrackerCustomCommandRequestBuilder = SerialTrackerCustomCommandRequestBuilder.new( _fbb );
	builder.add_command( command );
	return builder.finish();

class SerialDevicesRequest extends FlatBuffer:


	## Initialize the SerialTrackerCustomCommandRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialTrackerCustomCommandRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for SerialDevicesRequest
class SerialDevicesRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the SerialDevicesRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialDevicesRequest table in one go using the provided [param _fbb]
static func create_SerialDevicesRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: SerialDevicesRequestBuilder = SerialDevicesRequestBuilder.new( _fbb );
	return builder.finish();

class SerialDevicesResponse extends FlatBuffer:

	enum {
		VT_DEVICES = 4
	}

	## Initialize the SerialDevicesRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialDevicesRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_DEVICES)
			and verify_vector_u32(verifier, VT_DEVICES)
			and devices_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if devices is present in the buffer, else false
	func devices_is_present() -> bool:
		return get_field_offset( VT_DEVICES )

	func devices_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.SerialDevice.new()
		for i in devices_size():
			if not devices_at(i, tmp).verify(verifier):
				return false
		return true

	func devices_size() -> int:
		var array_start: int = get_offset_field_start( VT_DEVICES )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func devices_at( idx: int, into: SerialDevice = null ) -> SerialDevice:
		var field_start: int = get_offset_field_start( VT_DEVICES )
		assert(field_start, 'Field "devices" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.SerialDevice.new( _fb_bytes, element_pos + element_offset )

	func devices() -> Array:
		var array_start: int = get_offset_field_start( VT_DEVICES )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.SerialDevice.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for SerialDevicesResponse
class SerialDevicesResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the devices field to the SerialDevicesResponse table
	func add_devices( devices_offset: int ) -> void:
		fbb_.add_offset( SerialDevicesResponse.VT_DEVICES, devices_offset )

	## Finish building the SerialDevicesResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialDevicesResponse table in one go using the provided [param _fbb]
static func create_SerialDevicesResponse( _fbb: FlatBufferBuilder,
		devices: int ) -> int :
	var builder: SerialDevicesResponseBuilder = SerialDevicesResponseBuilder.new( _fbb );
	builder.add_devices( devices );
	return builder.finish();

class NewSerialDeviceResponse extends FlatBuffer:

	enum {
		VT_DEVICE = 4
	}

	## Initialize the SerialDevicesResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialDevicesResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_DEVICE)
			and device().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if device is present in the buffer, else false
	func device_is_present() -> bool:
		return get_field_offset( VT_DEVICE )

	func device() -> SolarXR.SerialDevice:
		var field_start: int = get_offset_field_start( VT_DEVICE )
		if not field_start: return null
		return SolarXR.SerialDevice.new( _fb_bytes, field_start )


## Builder class for NewSerialDeviceResponse
class NewSerialDeviceResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the device field to the NewSerialDeviceResponse table
	func add_device( device_offset: int ) -> void:
		fbb_.add_offset( NewSerialDeviceResponse.VT_DEVICE, device_offset )

	## Finish building the NewSerialDeviceResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a NewSerialDeviceResponse table in one go using the provided [param _fbb]
static func create_NewSerialDeviceResponse( _fbb: FlatBufferBuilder,
		device: int ) -> int :
	var builder: NewSerialDeviceResponseBuilder = NewSerialDeviceResponseBuilder.new( _fbb );
	builder.add_device( device );
	return builder.finish();

class StartWifiProvisioningRequest extends FlatBuffer:

	enum {
		VT_SSID = 4,
		VT_PASSWORD = 6,
		VT_PORT = 8
	}

	## Initialize the NewSerialDeviceResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the NewSerialDeviceResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_SSID)
			and verify_string( verifier, VT_SSID )
			and verify_offset(verifier, VT_PASSWORD)
			and verify_string( verifier, VT_PASSWORD )
			and verify_offset(verifier, VT_PORT)
			and verify_string( verifier, VT_PORT )
			and verify_end_table(verifier)
		)

	## Return true if ssid is present in the buffer, else false
	func ssid_is_present() -> bool:
		return get_field_offset( VT_SSID )

	func ssid() -> String:
		var field_start: int = get_offset_field_start( VT_SSID )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if password is present in the buffer, else false
	func password_is_present() -> bool:
		return get_field_offset( VT_PASSWORD )

	func password() -> String:
		var field_start: int = get_offset_field_start( VT_PASSWORD )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if port is present in the buffer, else false
	func port_is_present() -> bool:
		return get_field_offset( VT_PORT )

	func port() -> String:
		var field_start: int = get_offset_field_start( VT_PORT )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for StartWifiProvisioningRequest
class StartWifiProvisioningRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the ssid field to the StartWifiProvisioningRequest table
	func add_ssid( ssid_offset: int ) -> void:
		fbb_.add_offset( StartWifiProvisioningRequest.VT_SSID, ssid_offset )

	## Add the password field to the StartWifiProvisioningRequest table
	func add_password( password_offset: int ) -> void:
		fbb_.add_offset( StartWifiProvisioningRequest.VT_PASSWORD, password_offset )

	## Add the port field to the StartWifiProvisioningRequest table
	func add_port( port_offset: int ) -> void:
		fbb_.add_offset( StartWifiProvisioningRequest.VT_PORT, port_offset )

	## Finish building the StartWifiProvisioningRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StartWifiProvisioningRequest table in one go using the provided [param _fbb]
static func create_StartWifiProvisioningRequest( _fbb: FlatBufferBuilder,
		ssid: int,
		password: int,
		port: int ) -> int :
	var builder: StartWifiProvisioningRequestBuilder = StartWifiProvisioningRequestBuilder.new( _fbb );
	builder.add_port( port );
	builder.add_password( password );
	builder.add_ssid( ssid );
	return builder.finish();

class StopWifiProvisioningRequest extends FlatBuffer:


	## Initialize the StartWifiProvisioningRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StartWifiProvisioningRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for StopWifiProvisioningRequest
class StopWifiProvisioningRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the StopWifiProvisioningRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StopWifiProvisioningRequest table in one go using the provided [param _fbb]
static func create_StopWifiProvisioningRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: StopWifiProvisioningRequestBuilder = StopWifiProvisioningRequestBuilder.new( _fbb );
	return builder.finish();

class WifiProvisioningStatusResponse extends FlatBuffer:

	enum {
		VT_STATUS = 4
	}

	## Initialize the StopWifiProvisioningRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StopWifiProvisioningRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_STATUS, 1)
			and verify_end_table(verifier)
		)

	## Return true if status is present in the buffer, else false
	func status_is_present() -> bool:
		return get_field_offset( VT_STATUS )

	func status() -> WifiProvisioningStatus:
		var field_start: int = get_inline_field_start( VT_STATUS )
		if not field_start: return 0 as WifiProvisioningStatus
		var decoded: WifiProvisioningStatus = _fb_bytes.decode_u8( field_start )
		return decoded


## Builder class for WifiProvisioningStatusResponse
class WifiProvisioningStatusResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the status field to the WifiProvisioningStatusResponse table
	func add_status( status: WifiProvisioningStatus ) -> void:
		fbb_.add_element_ubyte( WifiProvisioningStatusResponse.VT_STATUS, status )

	## Finish building the WifiProvisioningStatusResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a WifiProvisioningStatusResponse table in one go using the provided [param _fbb]
static func create_WifiProvisioningStatusResponse( _fbb: FlatBufferBuilder,
		status: WifiProvisioningStatus ) -> int :
	var builder: WifiProvisioningStatusResponseBuilder = WifiProvisioningStatusResponseBuilder.new( _fbb );
	builder.add_status( status );
	return builder.finish();

class AutoBoneProcessRequest extends FlatBuffer:

	enum {
		VT_PROCESS_TYPE = 4
	}

	## Initialize the WifiProvisioningStatusResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the WifiProvisioningStatusResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_PROCESS_TYPE, 1)
			and verify_end_table(verifier)
		)

	## Return true if process_type is present in the buffer, else false
	func process_type_is_present() -> bool:
		return get_field_offset( VT_PROCESS_TYPE )

	func process_type() -> AutoBoneProcessType:
		var field_start: int = get_inline_field_start( VT_PROCESS_TYPE )
		if not field_start: return 0 as AutoBoneProcessType
		var decoded: AutoBoneProcessType = _fb_bytes.decode_u8( field_start )
		return decoded


## Builder class for AutoBoneProcessRequest
class AutoBoneProcessRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the process_type field to the AutoBoneProcessRequest table
	func add_process_type( process_type: AutoBoneProcessType ) -> void:
		fbb_.add_element_ubyte( AutoBoneProcessRequest.VT_PROCESS_TYPE, process_type )

	## Finish building the AutoBoneProcessRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a AutoBoneProcessRequest table in one go using the provided [param _fbb]
static func create_AutoBoneProcessRequest( _fbb: FlatBufferBuilder,
		process_type: AutoBoneProcessType ) -> int :
	var builder: AutoBoneProcessRequestBuilder = AutoBoneProcessRequestBuilder.new( _fbb );
	builder.add_process_type( process_type );
	return builder.finish();

class AutoBoneProcessStatusResponse extends FlatBuffer:

	enum {
		VT_PROCESS_TYPE = 4,
		VT_MESSAGE = 6,
		VT_CURRENT = 8,
		VT_TOTAL = 10,
		VT_COMPLETED = 12,
		VT_SUCCESS = 14,
		VT_ETA = 16
	}

	## Initialize the AutoBoneProcessRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the AutoBoneProcessRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_PROCESS_TYPE, 1)
			and verify_field_u32(verifier, VT_CURRENT, 4)
			and verify_field_u32(verifier, VT_TOTAL, 4)
			and verify_field_u8(verifier, VT_COMPLETED, 1)
			and verify_field_u8(verifier, VT_SUCCESS, 1)
			and verify_field_float(verifier, VT_ETA, 4)
			and verify_end_table(verifier)
		)

	## Return true if process_type is present in the buffer, else false
	func process_type_is_present() -> bool:
		return get_field_offset( VT_PROCESS_TYPE )

	func process_type() -> AutoBoneProcessType:
		var field_start: int = get_inline_field_start( VT_PROCESS_TYPE )
		if not field_start: return 0 as AutoBoneProcessType
		var decoded: AutoBoneProcessType = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if current is present in the buffer, else false
	func current_is_present() -> bool:
		return get_field_offset( VT_CURRENT )

	func current() -> int:
		var field_start: int = get_inline_field_start( VT_CURRENT )
		if not field_start: return 0
		return _fb_bytes.decode_u32( field_start )

	## Return true if total is present in the buffer, else false
	func total_is_present() -> bool:
		return get_field_offset( VT_TOTAL )

	func total() -> int:
		var field_start: int = get_inline_field_start( VT_TOTAL )
		if not field_start: return 0
		return _fb_bytes.decode_u32( field_start )

	## Return true if completed is present in the buffer, else false
	func completed_is_present() -> bool:
		return get_field_offset( VT_COMPLETED )

	func completed() -> bool:
		var field_start: int = get_inline_field_start( VT_COMPLETED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if success is present in the buffer, else false
	func success_is_present() -> bool:
		return get_field_offset( VT_SUCCESS )

	func success() -> bool:
		var field_start: int = get_inline_field_start( VT_SUCCESS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if eta is present in the buffer, else false
	func eta_is_present() -> bool:
		return get_field_offset( VT_ETA )

	func eta() -> float:
		var field_start: int = get_inline_field_start( VT_ETA )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for AutoBoneProcessStatusResponse
class AutoBoneProcessStatusResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the process_type field to the AutoBoneProcessStatusResponse table
	func add_process_type( process_type: AutoBoneProcessType ) -> void:
		fbb_.add_element_ubyte( AutoBoneProcessStatusResponse.VT_PROCESS_TYPE, process_type )

	## Add the current field to the AutoBoneProcessStatusResponse table
	func add_current( current: int ) -> void:
		fbb_.add_element_uint_default( AutoBoneProcessStatusResponse.VT_CURRENT, current, 0 )

	## Add the total field to the AutoBoneProcessStatusResponse table
	func add_total( total: int ) -> void:
		fbb_.add_element_uint_default( AutoBoneProcessStatusResponse.VT_TOTAL, total, 0 )

	## Add the completed field to the AutoBoneProcessStatusResponse table
	func add_completed( completed: bool ) -> void:
		fbb_.add_element_bool_default( AutoBoneProcessStatusResponse.VT_COMPLETED, completed, 0 )

	## Add the success field to the AutoBoneProcessStatusResponse table
	func add_success( success: bool ) -> void:
		fbb_.add_element_bool_default( AutoBoneProcessStatusResponse.VT_SUCCESS, success, 0 )

	## Add the eta field to the AutoBoneProcessStatusResponse table
	func add_eta( eta: float ) -> void:
		fbb_.add_element_float_default( AutoBoneProcessStatusResponse.VT_ETA, eta, 0.0 )

	## Finish building the AutoBoneProcessStatusResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a AutoBoneProcessStatusResponse table in one go using the provided [param _fbb]
static func create_AutoBoneProcessStatusResponse( _fbb: FlatBufferBuilder,
		process_type: AutoBoneProcessType,
		current: int,
		total: int,
		completed: bool,
		success: bool,
		eta: float ) -> int :
	var builder: AutoBoneProcessStatusResponseBuilder = AutoBoneProcessStatusResponseBuilder.new( _fbb );
	builder.add_eta( eta );
	builder.add_total( total );
	builder.add_current( current );
	builder.add_success( success );
	builder.add_completed( completed );
	builder.add_process_type( process_type );
	return builder.finish();

class AutoBoneEpochResponse extends FlatBuffer:

	enum {
		VT_CURRENT_EPOCH = 4,
		VT_TOTAL_EPOCHS = 6,
		VT_EPOCH_ERROR = 8,
		VT_ADJUSTED_SKELETON_PARTS = 10
	}

	## Initialize the AutoBoneProcessStatusResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the AutoBoneProcessStatusResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u32(verifier, VT_CURRENT_EPOCH, 4)
			and verify_field_u32(verifier, VT_TOTAL_EPOCHS, 4)
			and verify_field_float(verifier, VT_EPOCH_ERROR, 4)
			and verify_offset(verifier, VT_ADJUSTED_SKELETON_PARTS)
			and verify_vector_u32(verifier, VT_ADJUSTED_SKELETON_PARTS)
			and adjusted_skeleton_parts_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if current_epoch is present in the buffer, else false
	func current_epoch_is_present() -> bool:
		return get_field_offset( VT_CURRENT_EPOCH )

	func current_epoch() -> int:
		var field_start: int = get_inline_field_start( VT_CURRENT_EPOCH )
		if not field_start: return 0
		return _fb_bytes.decode_u32( field_start )

	## Return true if total_epochs is present in the buffer, else false
	func total_epochs_is_present() -> bool:
		return get_field_offset( VT_TOTAL_EPOCHS )

	func total_epochs() -> int:
		var field_start: int = get_inline_field_start( VT_TOTAL_EPOCHS )
		if not field_start: return 0
		return _fb_bytes.decode_u32( field_start )

	## Return true if epoch_error is present in the buffer, else false
	func epoch_error_is_present() -> bool:
		return get_field_offset( VT_EPOCH_ERROR )

	func epoch_error() -> float:
		var field_start: int = get_inline_field_start( VT_EPOCH_ERROR )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if adjusted_skeleton_parts is present in the buffer, else false
	func adjusted_skeleton_parts_is_present() -> bool:
		return get_field_offset( VT_ADJUSTED_SKELETON_PARTS )

	func adjusted_skeleton_parts_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.SkeletonPart.new()
		for i in adjusted_skeleton_parts_size():
			if not adjusted_skeleton_parts_at(i, tmp).verify(verifier):
				return false
		return true

	func adjusted_skeleton_parts_size() -> int:
		var array_start: int = get_offset_field_start( VT_ADJUSTED_SKELETON_PARTS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func adjusted_skeleton_parts_at( idx: int, into: SkeletonPart = null ) -> SkeletonPart:
		var field_start: int = get_offset_field_start( VT_ADJUSTED_SKELETON_PARTS )
		assert(field_start, 'Field "adjusted_skeleton_parts" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.SkeletonPart.new( _fb_bytes, element_pos + element_offset )

	func adjusted_skeleton_parts() -> Array:
		var array_start: int = get_offset_field_start( VT_ADJUSTED_SKELETON_PARTS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.SkeletonPart.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for AutoBoneEpochResponse
class AutoBoneEpochResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the current_epoch field to the AutoBoneEpochResponse table
	func add_current_epoch( current_epoch: int ) -> void:
		fbb_.add_element_uint_default( AutoBoneEpochResponse.VT_CURRENT_EPOCH, current_epoch, 0 )

	## Add the total_epochs field to the AutoBoneEpochResponse table
	func add_total_epochs( total_epochs: int ) -> void:
		fbb_.add_element_uint_default( AutoBoneEpochResponse.VT_TOTAL_EPOCHS, total_epochs, 0 )

	## Add the epoch_error field to the AutoBoneEpochResponse table
	func add_epoch_error( epoch_error: float ) -> void:
		fbb_.add_element_float_default( AutoBoneEpochResponse.VT_EPOCH_ERROR, epoch_error, 0.0 )

	## Add the adjusted_skeleton_parts field to the AutoBoneEpochResponse table
	func add_adjusted_skeleton_parts( adjusted_skeleton_parts_offset: int ) -> void:
		fbb_.add_offset( AutoBoneEpochResponse.VT_ADJUSTED_SKELETON_PARTS, adjusted_skeleton_parts_offset )

	## Finish building the AutoBoneEpochResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a AutoBoneEpochResponse table in one go using the provided [param _fbb]
static func create_AutoBoneEpochResponse( _fbb: FlatBufferBuilder,
		current_epoch: int,
		total_epochs: int,
		epoch_error: float,
		adjusted_skeleton_parts: int ) -> int :
	var builder: AutoBoneEpochResponseBuilder = AutoBoneEpochResponseBuilder.new( _fbb );
	builder.add_adjusted_skeleton_parts( adjusted_skeleton_parts );
	builder.add_epoch_error( epoch_error );
	builder.add_total_epochs( total_epochs );
	builder.add_current_epoch( current_epoch );
	return builder.finish();

class AutoBoneSettings extends FlatBuffer:

	enum {
		VT_CURSOR_INCREMENT = 4,
		VT_MIN_DATA_DISTANCE = 6,
		VT_MAX_DATA_DISTANCE = 8,
		VT_NUM_EPOCHS = 10,
		VT_PRINT_EVERY_NUM_EPOCHS = 12,
		VT_INITIAL_ADJUST_RATE = 14,
		VT_ADJUST_RATE_DECAY = 16,
		VT_SLIDE_ERROR_FACTOR = 18,
		VT_OFFSET_SLIDE_ERROR_FACTOR = 20,
		VT_FOOT_HEIGHT_OFFSET_ERROR_FACTOR = 22,
		VT_BODY_PROPORTION_ERROR_FACTOR = 24,
		VT_HEIGHT_ERROR_FACTOR = 26,
		VT_POSITION_ERROR_FACTOR = 28,
		VT_POSITION_OFFSET_ERROR_FACTOR = 30,
		VT_CALC_INIT_ERROR = 32,
		VT_RANDOMIZE_FRAME_ORDER = 34,
		VT_SCALE_EACH_STEP = 36,
		VT_SAMPLE_COUNT = 38,
		VT_SAMPLE_RATE_MS = 40,
		VT_SAVE_RECORDINGS = 42,
		VT_USE_SKELETON_HEIGHT = 44,
		VT_RAND_SEED = 46
	}

	## Initialize the AutoBoneEpochResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the AutoBoneEpochResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_s32(verifier, VT_CURSOR_INCREMENT, 4)
			and verify_field_s32(verifier, VT_MIN_DATA_DISTANCE, 4)
			and verify_field_s32(verifier, VT_MAX_DATA_DISTANCE, 4)
			and verify_field_s32(verifier, VT_NUM_EPOCHS, 4)
			and verify_field_s32(verifier, VT_PRINT_EVERY_NUM_EPOCHS, 4)
			and verify_field_float(verifier, VT_INITIAL_ADJUST_RATE, 4)
			and verify_field_float(verifier, VT_ADJUST_RATE_DECAY, 4)
			and verify_field_float(verifier, VT_SLIDE_ERROR_FACTOR, 4)
			and verify_field_float(verifier, VT_OFFSET_SLIDE_ERROR_FACTOR, 4)
			and verify_field_float(verifier, VT_FOOT_HEIGHT_OFFSET_ERROR_FACTOR, 4)
			and verify_field_float(verifier, VT_BODY_PROPORTION_ERROR_FACTOR, 4)
			and verify_field_float(verifier, VT_HEIGHT_ERROR_FACTOR, 4)
			and verify_field_float(verifier, VT_POSITION_ERROR_FACTOR, 4)
			and verify_field_float(verifier, VT_POSITION_OFFSET_ERROR_FACTOR, 4)
			and verify_field_u8(verifier, VT_CALC_INIT_ERROR, 1)
			and verify_field_u8(verifier, VT_RANDOMIZE_FRAME_ORDER, 1)
			and verify_field_u8(verifier, VT_SCALE_EACH_STEP, 1)
			and verify_field_s32(verifier, VT_SAMPLE_COUNT, 4)
			and verify_field_s64(verifier, VT_SAMPLE_RATE_MS, 8)
			and verify_field_u8(verifier, VT_SAVE_RECORDINGS, 1)
			and verify_field_u8(verifier, VT_USE_SKELETON_HEIGHT, 1)
			and verify_field_s64(verifier, VT_RAND_SEED, 8)
			and verify_end_table(verifier)
		)

	## Return true if cursor_increment is present in the buffer, else false
	func cursor_increment_is_present() -> bool:
		return get_field_offset( VT_CURSOR_INCREMENT )

	func cursor_increment() -> int:
		var field_start: int = get_inline_field_start( VT_CURSOR_INCREMENT )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )

	## Return true if min_data_distance is present in the buffer, else false
	func min_data_distance_is_present() -> bool:
		return get_field_offset( VT_MIN_DATA_DISTANCE )

	func min_data_distance() -> int:
		var field_start: int = get_inline_field_start( VT_MIN_DATA_DISTANCE )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )

	## Return true if max_data_distance is present in the buffer, else false
	func max_data_distance_is_present() -> bool:
		return get_field_offset( VT_MAX_DATA_DISTANCE )

	func max_data_distance() -> int:
		var field_start: int = get_inline_field_start( VT_MAX_DATA_DISTANCE )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )

	## Return true if num_epochs is present in the buffer, else false
	func num_epochs_is_present() -> bool:
		return get_field_offset( VT_NUM_EPOCHS )

	func num_epochs() -> int:
		var field_start: int = get_inline_field_start( VT_NUM_EPOCHS )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )

	## Return true if print_every_num_epochs is present in the buffer, else false
	func print_every_num_epochs_is_present() -> bool:
		return get_field_offset( VT_PRINT_EVERY_NUM_EPOCHS )

	func print_every_num_epochs() -> int:
		var field_start: int = get_inline_field_start( VT_PRINT_EVERY_NUM_EPOCHS )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )

	## Return true if initial_adjust_rate is present in the buffer, else false
	func initial_adjust_rate_is_present() -> bool:
		return get_field_offset( VT_INITIAL_ADJUST_RATE )

	func initial_adjust_rate() -> float:
		var field_start: int = get_inline_field_start( VT_INITIAL_ADJUST_RATE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if adjust_rate_decay is present in the buffer, else false
	func adjust_rate_decay_is_present() -> bool:
		return get_field_offset( VT_ADJUST_RATE_DECAY )

	func adjust_rate_decay() -> float:
		var field_start: int = get_inline_field_start( VT_ADJUST_RATE_DECAY )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if slide_error_factor is present in the buffer, else false
	func slide_error_factor_is_present() -> bool:
		return get_field_offset( VT_SLIDE_ERROR_FACTOR )

	func slide_error_factor() -> float:
		var field_start: int = get_inline_field_start( VT_SLIDE_ERROR_FACTOR )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if offset_slide_error_factor is present in the buffer, else false
	func offset_slide_error_factor_is_present() -> bool:
		return get_field_offset( VT_OFFSET_SLIDE_ERROR_FACTOR )

	func offset_slide_error_factor() -> float:
		var field_start: int = get_inline_field_start( VT_OFFSET_SLIDE_ERROR_FACTOR )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if foot_height_offset_error_factor is present in the buffer, else false
	func foot_height_offset_error_factor_is_present() -> bool:
		return get_field_offset( VT_FOOT_HEIGHT_OFFSET_ERROR_FACTOR )

	func foot_height_offset_error_factor() -> float:
		var field_start: int = get_inline_field_start( VT_FOOT_HEIGHT_OFFSET_ERROR_FACTOR )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if body_proportion_error_factor is present in the buffer, else false
	func body_proportion_error_factor_is_present() -> bool:
		return get_field_offset( VT_BODY_PROPORTION_ERROR_FACTOR )

	func body_proportion_error_factor() -> float:
		var field_start: int = get_inline_field_start( VT_BODY_PROPORTION_ERROR_FACTOR )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if height_error_factor is present in the buffer, else false
	func height_error_factor_is_present() -> bool:
		return get_field_offset( VT_HEIGHT_ERROR_FACTOR )

	func height_error_factor() -> float:
		var field_start: int = get_inline_field_start( VT_HEIGHT_ERROR_FACTOR )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if position_error_factor is present in the buffer, else false
	func position_error_factor_is_present() -> bool:
		return get_field_offset( VT_POSITION_ERROR_FACTOR )

	func position_error_factor() -> float:
		var field_start: int = get_inline_field_start( VT_POSITION_ERROR_FACTOR )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if position_offset_error_factor is present in the buffer, else false
	func position_offset_error_factor_is_present() -> bool:
		return get_field_offset( VT_POSITION_OFFSET_ERROR_FACTOR )

	func position_offset_error_factor() -> float:
		var field_start: int = get_inline_field_start( VT_POSITION_OFFSET_ERROR_FACTOR )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if calc_init_error is present in the buffer, else false
	func calc_init_error_is_present() -> bool:
		return get_field_offset( VT_CALC_INIT_ERROR )

	func calc_init_error() -> bool:
		var field_start: int = get_inline_field_start( VT_CALC_INIT_ERROR )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if randomize_frame_order is present in the buffer, else false
	func randomize_frame_order_is_present() -> bool:
		return get_field_offset( VT_RANDOMIZE_FRAME_ORDER )

	func randomize_frame_order() -> bool:
		var field_start: int = get_inline_field_start( VT_RANDOMIZE_FRAME_ORDER )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if scale_each_step is present in the buffer, else false
	func scale_each_step_is_present() -> bool:
		return get_field_offset( VT_SCALE_EACH_STEP )

	func scale_each_step() -> bool:
		var field_start: int = get_inline_field_start( VT_SCALE_EACH_STEP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if sample_count is present in the buffer, else false
	func sample_count_is_present() -> bool:
		return get_field_offset( VT_SAMPLE_COUNT )

	func sample_count() -> int:
		var field_start: int = get_inline_field_start( VT_SAMPLE_COUNT )
		if not field_start: return 0
		return _fb_bytes.decode_s32( field_start )

	## Return true if sample_rate_ms is present in the buffer, else false
	func sample_rate_ms_is_present() -> bool:
		return get_field_offset( VT_SAMPLE_RATE_MS )

	func sample_rate_ms() -> int:
		var field_start: int = get_inline_field_start( VT_SAMPLE_RATE_MS )
		if not field_start: return 0
		return _fb_bytes.decode_s64( field_start )

	## Return true if save_recordings is present in the buffer, else false
	func save_recordings_is_present() -> bool:
		return get_field_offset( VT_SAVE_RECORDINGS )

	func save_recordings() -> bool:
		var field_start: int = get_inline_field_start( VT_SAVE_RECORDINGS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if use_skeleton_height is present in the buffer, else false
	func use_skeleton_height_is_present() -> bool:
		return get_field_offset( VT_USE_SKELETON_HEIGHT )

	func use_skeleton_height() -> bool:
		var field_start: int = get_inline_field_start( VT_USE_SKELETON_HEIGHT )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if rand_seed is present in the buffer, else false
	func rand_seed_is_present() -> bool:
		return get_field_offset( VT_RAND_SEED )

	func rand_seed() -> int:
		var field_start: int = get_inline_field_start( VT_RAND_SEED )
		if not field_start: return 0
		return _fb_bytes.decode_s64( field_start )


## Builder class for AutoBoneSettings
class AutoBoneSettingsBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the cursor_increment field to the AutoBoneSettings table
	func add_cursor_increment( cursor_increment: int ) -> void:
		fbb_.add_element_int_default( AutoBoneSettings.VT_CURSOR_INCREMENT, cursor_increment, 0 )

	## Add the min_data_distance field to the AutoBoneSettings table
	func add_min_data_distance( min_data_distance: int ) -> void:
		fbb_.add_element_int_default( AutoBoneSettings.VT_MIN_DATA_DISTANCE, min_data_distance, 0 )

	## Add the max_data_distance field to the AutoBoneSettings table
	func add_max_data_distance( max_data_distance: int ) -> void:
		fbb_.add_element_int_default( AutoBoneSettings.VT_MAX_DATA_DISTANCE, max_data_distance, 0 )

	## Add the num_epochs field to the AutoBoneSettings table
	func add_num_epochs( num_epochs: int ) -> void:
		fbb_.add_element_int_default( AutoBoneSettings.VT_NUM_EPOCHS, num_epochs, 0 )

	## Add the print_every_num_epochs field to the AutoBoneSettings table
	func add_print_every_num_epochs( print_every_num_epochs: int ) -> void:
		fbb_.add_element_int_default( AutoBoneSettings.VT_PRINT_EVERY_NUM_EPOCHS, print_every_num_epochs, 0 )

	## Add the initial_adjust_rate field to the AutoBoneSettings table
	func add_initial_adjust_rate( initial_adjust_rate: float ) -> void:
		fbb_.add_element_float_default( AutoBoneSettings.VT_INITIAL_ADJUST_RATE, initial_adjust_rate, 0.0 )

	## Add the adjust_rate_decay field to the AutoBoneSettings table
	func add_adjust_rate_decay( adjust_rate_decay: float ) -> void:
		fbb_.add_element_float_default( AutoBoneSettings.VT_ADJUST_RATE_DECAY, adjust_rate_decay, 0.0 )

	## Add the slide_error_factor field to the AutoBoneSettings table
	func add_slide_error_factor( slide_error_factor: float ) -> void:
		fbb_.add_element_float_default( AutoBoneSettings.VT_SLIDE_ERROR_FACTOR, slide_error_factor, 0.0 )

	## Add the offset_slide_error_factor field to the AutoBoneSettings table
	func add_offset_slide_error_factor( offset_slide_error_factor: float ) -> void:
		fbb_.add_element_float_default( AutoBoneSettings.VT_OFFSET_SLIDE_ERROR_FACTOR, offset_slide_error_factor, 0.0 )

	## Add the foot_height_offset_error_factor field to the AutoBoneSettings table
	func add_foot_height_offset_error_factor( foot_height_offset_error_factor: float ) -> void:
		fbb_.add_element_float_default( AutoBoneSettings.VT_FOOT_HEIGHT_OFFSET_ERROR_FACTOR, foot_height_offset_error_factor, 0.0 )

	## Add the body_proportion_error_factor field to the AutoBoneSettings table
	func add_body_proportion_error_factor( body_proportion_error_factor: float ) -> void:
		fbb_.add_element_float_default( AutoBoneSettings.VT_BODY_PROPORTION_ERROR_FACTOR, body_proportion_error_factor, 0.0 )

	## Add the height_error_factor field to the AutoBoneSettings table
	func add_height_error_factor( height_error_factor: float ) -> void:
		fbb_.add_element_float_default( AutoBoneSettings.VT_HEIGHT_ERROR_FACTOR, height_error_factor, 0.0 )

	## Add the position_error_factor field to the AutoBoneSettings table
	func add_position_error_factor( position_error_factor: float ) -> void:
		fbb_.add_element_float_default( AutoBoneSettings.VT_POSITION_ERROR_FACTOR, position_error_factor, 0.0 )

	## Add the position_offset_error_factor field to the AutoBoneSettings table
	func add_position_offset_error_factor( position_offset_error_factor: float ) -> void:
		fbb_.add_element_float_default( AutoBoneSettings.VT_POSITION_OFFSET_ERROR_FACTOR, position_offset_error_factor, 0.0 )

	## Add the calc_init_error field to the AutoBoneSettings table
	func add_calc_init_error( calc_init_error: bool ) -> void:
		fbb_.add_element_bool_default( AutoBoneSettings.VT_CALC_INIT_ERROR, calc_init_error, 0 )

	## Add the randomize_frame_order field to the AutoBoneSettings table
	func add_randomize_frame_order( randomize_frame_order: bool ) -> void:
		fbb_.add_element_bool_default( AutoBoneSettings.VT_RANDOMIZE_FRAME_ORDER, randomize_frame_order, 0 )

	## Add the scale_each_step field to the AutoBoneSettings table
	func add_scale_each_step( scale_each_step: bool ) -> void:
		fbb_.add_element_bool_default( AutoBoneSettings.VT_SCALE_EACH_STEP, scale_each_step, 0 )

	## Add the sample_count field to the AutoBoneSettings table
	func add_sample_count( sample_count: int ) -> void:
		fbb_.add_element_int_default( AutoBoneSettings.VT_SAMPLE_COUNT, sample_count, 0 )

	## Add the sample_rate_ms field to the AutoBoneSettings table
	func add_sample_rate_ms( sample_rate_ms: int ) -> void:
		fbb_.add_element_long_default( AutoBoneSettings.VT_SAMPLE_RATE_MS, sample_rate_ms, 0 )

	## Add the save_recordings field to the AutoBoneSettings table
	func add_save_recordings( save_recordings: bool ) -> void:
		fbb_.add_element_bool_default( AutoBoneSettings.VT_SAVE_RECORDINGS, save_recordings, 0 )

	## Add the use_skeleton_height field to the AutoBoneSettings table
	func add_use_skeleton_height( use_skeleton_height: bool ) -> void:
		fbb_.add_element_bool_default( AutoBoneSettings.VT_USE_SKELETON_HEIGHT, use_skeleton_height, 0 )

	## Add the rand_seed field to the AutoBoneSettings table
	func add_rand_seed( rand_seed: int ) -> void:
		fbb_.add_element_long_default( AutoBoneSettings.VT_RAND_SEED, rand_seed, 0 )

	## Finish building the AutoBoneSettings table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a AutoBoneSettings table in one go using the provided [param _fbb]
static func create_AutoBoneSettings( _fbb: FlatBufferBuilder,
		cursor_increment: int,
		min_data_distance: int,
		max_data_distance: int,
		num_epochs: int,
		print_every_num_epochs: int,
		initial_adjust_rate: float,
		adjust_rate_decay: float,
		slide_error_factor: float,
		offset_slide_error_factor: float,
		foot_height_offset_error_factor: float,
		body_proportion_error_factor: float,
		height_error_factor: float,
		position_error_factor: float,
		position_offset_error_factor: float,
		calc_init_error: bool,
		randomize_frame_order: bool,
		scale_each_step: bool,
		sample_count: int,
		sample_rate_ms: int,
		save_recordings: bool,
		use_skeleton_height: bool,
		rand_seed: int ) -> int :
	var builder: AutoBoneSettingsBuilder = AutoBoneSettingsBuilder.new( _fbb );
	builder.add_rand_seed( rand_seed );
	builder.add_sample_rate_ms( sample_rate_ms );
	builder.add_sample_count( sample_count );
	builder.add_position_offset_error_factor( position_offset_error_factor );
	builder.add_position_error_factor( position_error_factor );
	builder.add_height_error_factor( height_error_factor );
	builder.add_body_proportion_error_factor( body_proportion_error_factor );
	builder.add_foot_height_offset_error_factor( foot_height_offset_error_factor );
	builder.add_offset_slide_error_factor( offset_slide_error_factor );
	builder.add_slide_error_factor( slide_error_factor );
	builder.add_adjust_rate_decay( adjust_rate_decay );
	builder.add_initial_adjust_rate( initial_adjust_rate );
	builder.add_print_every_num_epochs( print_every_num_epochs );
	builder.add_num_epochs( num_epochs );
	builder.add_max_data_distance( max_data_distance );
	builder.add_min_data_distance( min_data_distance );
	builder.add_cursor_increment( cursor_increment );
	builder.add_use_skeleton_height( use_skeleton_height );
	builder.add_save_recordings( save_recordings );
	builder.add_scale_each_step( scale_each_step );
	builder.add_randomize_frame_order( randomize_frame_order );
	builder.add_calc_init_error( calc_init_error );
	return builder.finish();

class HeightRequest extends FlatBuffer:


	## Initialize the AutoBoneSettings with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the AutoBoneSettings data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for HeightRequest
class HeightRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the HeightRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a HeightRequest table in one go using the provided [param _fbb]
static func create_HeightRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: HeightRequestBuilder = HeightRequestBuilder.new( _fbb );
	return builder.finish();

class HeightResponse extends FlatBuffer:

	enum {
		VT_MIN_HEIGHT = 4,
		VT_MAX_HEIGHT = 6
	}

	## Initialize the HeightRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the HeightRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_float(verifier, VT_MIN_HEIGHT, 4)
			and verify_field_float(verifier, VT_MAX_HEIGHT, 4)
			and verify_end_table(verifier)
		)

	## Return true if min_height is present in the buffer, else false
	func min_height_is_present() -> bool:
		return get_field_offset( VT_MIN_HEIGHT )

	func min_height() -> float:
		var field_start: int = get_inline_field_start( VT_MIN_HEIGHT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if max_height is present in the buffer, else false
	func max_height_is_present() -> bool:
		return get_field_offset( VT_MAX_HEIGHT )

	func max_height() -> float:
		var field_start: int = get_inline_field_start( VT_MAX_HEIGHT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )


## Builder class for HeightResponse
class HeightResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the min_height field to the HeightResponse table
	func add_min_height( min_height: float ) -> void:
		fbb_.add_element_float_default( HeightResponse.VT_MIN_HEIGHT, min_height, 0.0 )

	## Add the max_height field to the HeightResponse table
	func add_max_height( max_height: float ) -> void:
		fbb_.add_element_float_default( HeightResponse.VT_MAX_HEIGHT, max_height, 0.0 )

	## Finish building the HeightResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a HeightResponse table in one go using the provided [param _fbb]
static func create_HeightResponse( _fbb: FlatBufferBuilder,
		min_height: float,
		max_height: float ) -> int :
	var builder: HeightResponseBuilder = HeightResponseBuilder.new( _fbb );
	builder.add_max_height( max_height );
	builder.add_min_height( min_height );
	return builder.finish();

class AutoBoneApplyRequest extends FlatBuffer:


	## Initialize the HeightResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the HeightResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for AutoBoneApplyRequest
class AutoBoneApplyRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the AutoBoneApplyRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a AutoBoneApplyRequest table in one go using the provided [param _fbb]
static func create_AutoBoneApplyRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: AutoBoneApplyRequestBuilder = AutoBoneApplyRequestBuilder.new( _fbb );
	return builder.finish();

class AutoBoneStopRecordingRequest extends FlatBuffer:


	## Initialize the AutoBoneApplyRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the AutoBoneApplyRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for AutoBoneStopRecordingRequest
class AutoBoneStopRecordingRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the AutoBoneStopRecordingRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a AutoBoneStopRecordingRequest table in one go using the provided [param _fbb]
static func create_AutoBoneStopRecordingRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: AutoBoneStopRecordingRequestBuilder = AutoBoneStopRecordingRequestBuilder.new( _fbb );
	return builder.finish();

class AutoBoneCancelRecordingRequest extends FlatBuffer:


	## Initialize the AutoBoneStopRecordingRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the AutoBoneStopRecordingRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for AutoBoneCancelRecordingRequest
class AutoBoneCancelRecordingRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the AutoBoneCancelRecordingRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a AutoBoneCancelRecordingRequest table in one go using the provided [param _fbb]
static func create_AutoBoneCancelRecordingRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: AutoBoneCancelRecordingRequestBuilder = AutoBoneCancelRecordingRequestBuilder.new( _fbb );
	return builder.finish();

class OverlayDisplayModeRequest extends FlatBuffer:


	## Initialize the AutoBoneCancelRecordingRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the AutoBoneCancelRecordingRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for OverlayDisplayModeRequest
class OverlayDisplayModeRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the OverlayDisplayModeRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OverlayDisplayModeRequest table in one go using the provided [param _fbb]
static func create_OverlayDisplayModeRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: OverlayDisplayModeRequestBuilder = OverlayDisplayModeRequestBuilder.new( _fbb );
	return builder.finish();

class OverlayDisplayModeChangeRequest extends FlatBuffer:

	enum {
		VT_IS_VISIBLE = 4,
		VT_IS_MIRRORED = 6
	}

	## Initialize the OverlayDisplayModeRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OverlayDisplayModeRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_IS_VISIBLE, 1)
			and verify_field_u8(verifier, VT_IS_MIRRORED, 1)
			and verify_end_table(verifier)
		)

	## Return true if is_visible is present in the buffer, else false
	func is_visible_is_present() -> bool:
		return get_field_offset( VT_IS_VISIBLE )

	func is_visible() -> bool:
		var field_start: int = get_inline_field_start( VT_IS_VISIBLE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if is_mirrored is present in the buffer, else false
	func is_mirrored_is_present() -> bool:
		return get_field_offset( VT_IS_MIRRORED )

	func is_mirrored() -> bool:
		var field_start: int = get_inline_field_start( VT_IS_MIRRORED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for OverlayDisplayModeChangeRequest
class OverlayDisplayModeChangeRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the is_visible field to the OverlayDisplayModeChangeRequest table
	func add_is_visible( is_visible: bool ) -> void:
		fbb_.add_element_bool_default( OverlayDisplayModeChangeRequest.VT_IS_VISIBLE, is_visible, 0 )

	## Add the is_mirrored field to the OverlayDisplayModeChangeRequest table
	func add_is_mirrored( is_mirrored: bool ) -> void:
		fbb_.add_element_bool_default( OverlayDisplayModeChangeRequest.VT_IS_MIRRORED, is_mirrored, 0 )

	## Finish building the OverlayDisplayModeChangeRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OverlayDisplayModeChangeRequest table in one go using the provided [param _fbb]
static func create_OverlayDisplayModeChangeRequest( _fbb: FlatBufferBuilder,
		is_visible: bool,
		is_mirrored: bool ) -> int :
	var builder: OverlayDisplayModeChangeRequestBuilder = OverlayDisplayModeChangeRequestBuilder.new( _fbb );
	builder.add_is_mirrored( is_mirrored );
	builder.add_is_visible( is_visible );
	return builder.finish();

class OverlayDisplayModeResponse extends FlatBuffer:

	enum {
		VT_IS_VISIBLE = 4,
		VT_IS_MIRRORED = 6
	}

	## Initialize the OverlayDisplayModeChangeRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OverlayDisplayModeChangeRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_IS_VISIBLE, 1)
			and verify_field_u8(verifier, VT_IS_MIRRORED, 1)
			and verify_end_table(verifier)
		)

	## Return true if is_visible is present in the buffer, else false
	func is_visible_is_present() -> bool:
		return get_field_offset( VT_IS_VISIBLE )

	func is_visible() -> bool:
		var field_start: int = get_inline_field_start( VT_IS_VISIBLE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if is_mirrored is present in the buffer, else false
	func is_mirrored_is_present() -> bool:
		return get_field_offset( VT_IS_MIRRORED )

	func is_mirrored() -> bool:
		var field_start: int = get_inline_field_start( VT_IS_MIRRORED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for OverlayDisplayModeResponse
class OverlayDisplayModeResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the is_visible field to the OverlayDisplayModeResponse table
	func add_is_visible( is_visible: bool ) -> void:
		fbb_.add_element_bool_default( OverlayDisplayModeResponse.VT_IS_VISIBLE, is_visible, 0 )

	## Add the is_mirrored field to the OverlayDisplayModeResponse table
	func add_is_mirrored( is_mirrored: bool ) -> void:
		fbb_.add_element_bool_default( OverlayDisplayModeResponse.VT_IS_MIRRORED, is_mirrored, 0 )

	## Finish building the OverlayDisplayModeResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OverlayDisplayModeResponse table in one go using the provided [param _fbb]
static func create_OverlayDisplayModeResponse( _fbb: FlatBufferBuilder,
		is_visible: bool,
		is_mirrored: bool ) -> int :
	var builder: OverlayDisplayModeResponseBuilder = OverlayDisplayModeResponseBuilder.new( _fbb );
	builder.add_is_mirrored( is_mirrored );
	builder.add_is_visible( is_visible );
	return builder.finish();

class ServerInfosRequest extends FlatBuffer:


	## Initialize the OverlayDisplayModeResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OverlayDisplayModeResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for ServerInfosRequest
class ServerInfosRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the ServerInfosRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ServerInfosRequest table in one go using the provided [param _fbb]
static func create_ServerInfosRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: ServerInfosRequestBuilder = ServerInfosRequestBuilder.new( _fbb );
	return builder.finish();

class ServerInfosResponse extends FlatBuffer:

	enum {
		VT_LOCALIP = 4
	}

	## Initialize the ServerInfosRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ServerInfosRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_LOCALIP)
			and verify_string( verifier, VT_LOCALIP )
			and verify_end_table(verifier)
		)

	## Return true if localIp is present in the buffer, else false
	func localIp_is_present() -> bool:
		return get_field_offset( VT_LOCALIP )

	func localIp() -> String:
		var field_start: int = get_offset_field_start( VT_LOCALIP )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for ServerInfosResponse
class ServerInfosResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the localIp field to the ServerInfosResponse table
	func add_localIp( localIp_offset: int ) -> void:
		fbb_.add_offset( ServerInfosResponse.VT_LOCALIP, localIp_offset )

	## Finish building the ServerInfosResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ServerInfosResponse table in one go using the provided [param _fbb]
static func create_ServerInfosResponse( _fbb: FlatBufferBuilder,
		localIp: int ) -> int :
	var builder: ServerInfosResponseBuilder = ServerInfosResponseBuilder.new( _fbb );
	builder.add_localIp( localIp );
	return builder.finish();

class LegTweaksTmpChange extends FlatBuffer:

	enum {
		VT_FLOOR_CLIP = 4,
		VT_SKATING_CORRECTION = 6,
		VT_TOE_SNAP = 8,
		VT_FOOT_PLANT = 10
	}

	## Initialize the ServerInfosResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ServerInfosResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_FLOOR_CLIP, 1)
			and verify_field_u8(verifier, VT_SKATING_CORRECTION, 1)
			and verify_field_u8(verifier, VT_TOE_SNAP, 1)
			and verify_field_u8(verifier, VT_FOOT_PLANT, 1)
			and verify_end_table(verifier)
		)

	## Return true if floor_clip is present in the buffer, else false
	func floor_clip_is_present() -> bool:
		return get_field_offset( VT_FLOOR_CLIP )

	func floor_clip() -> bool:
		var field_start: int = get_inline_field_start( VT_FLOOR_CLIP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if skating_correction is present in the buffer, else false
	func skating_correction_is_present() -> bool:
		return get_field_offset( VT_SKATING_CORRECTION )

	func skating_correction() -> bool:
		var field_start: int = get_inline_field_start( VT_SKATING_CORRECTION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if toe_snap is present in the buffer, else false
	func toe_snap_is_present() -> bool:
		return get_field_offset( VT_TOE_SNAP )

	func toe_snap() -> bool:
		var field_start: int = get_inline_field_start( VT_TOE_SNAP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if foot_plant is present in the buffer, else false
	func foot_plant_is_present() -> bool:
		return get_field_offset( VT_FOOT_PLANT )

	func foot_plant() -> bool:
		var field_start: int = get_inline_field_start( VT_FOOT_PLANT )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for LegTweaksTmpChange
class LegTweaksTmpChangeBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the floor_clip field to the LegTweaksTmpChange table
	func add_floor_clip( floor_clip: bool ) -> void:
		fbb_.add_element_bool_default( LegTweaksTmpChange.VT_FLOOR_CLIP, floor_clip, 0 )

	## Add the skating_correction field to the LegTweaksTmpChange table
	func add_skating_correction( skating_correction: bool ) -> void:
		fbb_.add_element_bool_default( LegTweaksTmpChange.VT_SKATING_CORRECTION, skating_correction, 0 )

	## Add the toe_snap field to the LegTweaksTmpChange table
	func add_toe_snap( toe_snap: bool ) -> void:
		fbb_.add_element_bool_default( LegTweaksTmpChange.VT_TOE_SNAP, toe_snap, 0 )

	## Add the foot_plant field to the LegTweaksTmpChange table
	func add_foot_plant( foot_plant: bool ) -> void:
		fbb_.add_element_bool_default( LegTweaksTmpChange.VT_FOOT_PLANT, foot_plant, 0 )

	## Finish building the LegTweaksTmpChange table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a LegTweaksTmpChange table in one go using the provided [param _fbb]
static func create_LegTweaksTmpChange( _fbb: FlatBufferBuilder,
		floor_clip: bool,
		skating_correction: bool,
		toe_snap: bool,
		foot_plant: bool ) -> int :
	var builder: LegTweaksTmpChangeBuilder = LegTweaksTmpChangeBuilder.new( _fbb );
	builder.add_foot_plant( foot_plant );
	builder.add_toe_snap( toe_snap );
	builder.add_skating_correction( skating_correction );
	builder.add_floor_clip( floor_clip );
	return builder.finish();

class LegTweaksTmpClear extends FlatBuffer:

	enum {
		VT_FLOOR_CLIP = 4,
		VT_SKATING_CORRECTION = 6,
		VT_TOE_SNAP = 8,
		VT_FOOT_PLANT = 10
	}

	## Initialize the LegTweaksTmpChange with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the LegTweaksTmpChange data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_FLOOR_CLIP, 1)
			and verify_field_u8(verifier, VT_SKATING_CORRECTION, 1)
			and verify_field_u8(verifier, VT_TOE_SNAP, 1)
			and verify_field_u8(verifier, VT_FOOT_PLANT, 1)
			and verify_end_table(verifier)
		)

	## Return true if floor_clip is present in the buffer, else false
	func floor_clip_is_present() -> bool:
		return get_field_offset( VT_FLOOR_CLIP )

	func floor_clip() -> bool:
		var field_start: int = get_inline_field_start( VT_FLOOR_CLIP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if skating_correction is present in the buffer, else false
	func skating_correction_is_present() -> bool:
		return get_field_offset( VT_SKATING_CORRECTION )

	func skating_correction() -> bool:
		var field_start: int = get_inline_field_start( VT_SKATING_CORRECTION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if toe_snap is present in the buffer, else false
	func toe_snap_is_present() -> bool:
		return get_field_offset( VT_TOE_SNAP )

	func toe_snap() -> bool:
		var field_start: int = get_inline_field_start( VT_TOE_SNAP )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if foot_plant is present in the buffer, else false
	func foot_plant_is_present() -> bool:
		return get_field_offset( VT_FOOT_PLANT )

	func foot_plant() -> bool:
		var field_start: int = get_inline_field_start( VT_FOOT_PLANT )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for LegTweaksTmpClear
class LegTweaksTmpClearBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the floor_clip field to the LegTweaksTmpClear table
	func add_floor_clip( floor_clip: bool ) -> void:
		fbb_.add_element_bool_default( LegTweaksTmpClear.VT_FLOOR_CLIP, floor_clip, 0 )

	## Add the skating_correction field to the LegTweaksTmpClear table
	func add_skating_correction( skating_correction: bool ) -> void:
		fbb_.add_element_bool_default( LegTweaksTmpClear.VT_SKATING_CORRECTION, skating_correction, 0 )

	## Add the toe_snap field to the LegTweaksTmpClear table
	func add_toe_snap( toe_snap: bool ) -> void:
		fbb_.add_element_bool_default( LegTweaksTmpClear.VT_TOE_SNAP, toe_snap, 0 )

	## Add the foot_plant field to the LegTweaksTmpClear table
	func add_foot_plant( foot_plant: bool ) -> void:
		fbb_.add_element_bool_default( LegTweaksTmpClear.VT_FOOT_PLANT, foot_plant, 0 )

	## Finish building the LegTweaksTmpClear table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a LegTweaksTmpClear table in one go using the provided [param _fbb]
static func create_LegTweaksTmpClear( _fbb: FlatBufferBuilder,
		floor_clip: bool,
		skating_correction: bool,
		toe_snap: bool,
		foot_plant: bool ) -> int :
	var builder: LegTweaksTmpClearBuilder = LegTweaksTmpClearBuilder.new( _fbb );
	builder.add_foot_plant( foot_plant );
	builder.add_toe_snap( toe_snap );
	builder.add_skating_correction( skating_correction );
	builder.add_floor_clip( floor_clip );
	return builder.finish();

class StatusTrackerReset extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4
	}

	## Initialize the LegTweaksTmpClear with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the LegTweaksTmpClear data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and verify_vector_u32(verifier, VT_TRACKER_ID)
			and tracker_id_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.TrackerId.new()
		for i in tracker_id_size():
			if not tracker_id_at(i, tmp).verify(verifier):
				return false
		return true

	func tracker_id_size() -> int:
		var array_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func tracker_id_at( idx: int, into: TrackerId = null ) -> TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		assert(field_start, 'Field "tracker_id" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.TrackerId.new( _fb_bytes, element_pos + element_offset )

	func tracker_id() -> Array:
		var array_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.TrackerId.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for StatusTrackerReset
class StatusTrackerResetBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the StatusTrackerReset table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( StatusTrackerReset.VT_TRACKER_ID, tracker_id_offset )

	## Finish building the StatusTrackerReset table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusTrackerReset table in one go using the provided [param _fbb]
static func create_StatusTrackerReset( _fbb: FlatBufferBuilder,
		tracker_id: int ) -> int :
	var builder: StatusTrackerResetBuilder = StatusTrackerResetBuilder.new( _fbb );
	builder.add_tracker_id( tracker_id );
	return builder.finish();

class StatusTrackerError extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4
	}

	## Initialize the StatusTrackerReset with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusTrackerReset data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and verify_vector_u32(verifier, VT_TRACKER_ID)
			and tracker_id_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.TrackerId.new()
		for i in tracker_id_size():
			if not tracker_id_at(i, tmp).verify(verifier):
				return false
		return true

	func tracker_id_size() -> int:
		var array_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func tracker_id_at( idx: int, into: TrackerId = null ) -> TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		assert(field_start, 'Field "tracker_id" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.TrackerId.new( _fb_bytes, element_pos + element_offset )

	func tracker_id() -> Array:
		var array_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.TrackerId.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for StatusTrackerError
class StatusTrackerErrorBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the StatusTrackerError table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( StatusTrackerError.VT_TRACKER_ID, tracker_id_offset )

	## Finish building the StatusTrackerError table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusTrackerError table in one go using the provided [param _fbb]
static func create_StatusTrackerError( _fbb: FlatBufferBuilder,
		tracker_id: int ) -> int :
	var builder: StatusTrackerErrorBuilder = StatusTrackerErrorBuilder.new( _fbb );
	builder.add_tracker_id( tracker_id );
	return builder.finish();

class StatusSteamVRDisconnected extends FlatBuffer:

	enum {
		VT_BRIDGE_SETTINGS_NAME = 4
	}

	## Initialize the StatusTrackerError with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusTrackerError data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_BRIDGE_SETTINGS_NAME)
			and verify_string( verifier, VT_BRIDGE_SETTINGS_NAME )
			and verify_end_table(verifier)
		)

	## Return true if bridge_settings_name is present in the buffer, else false
	func bridge_settings_name_is_present() -> bool:
		return get_field_offset( VT_BRIDGE_SETTINGS_NAME )

	func bridge_settings_name() -> String:
		var field_start: int = get_offset_field_start( VT_BRIDGE_SETTINGS_NAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for StatusSteamVRDisconnected
class StatusSteamVRDisconnectedBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the bridge_settings_name field to the StatusSteamVRDisconnected table
	func add_bridge_settings_name( bridge_settings_name_offset: int ) -> void:
		fbb_.add_offset( StatusSteamVRDisconnected.VT_BRIDGE_SETTINGS_NAME, bridge_settings_name_offset )

	## Finish building the StatusSteamVRDisconnected table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusSteamVRDisconnected table in one go using the provided [param _fbb]
static func create_StatusSteamVRDisconnected( _fbb: FlatBufferBuilder,
		bridge_settings_name: int ) -> int :
	var builder: StatusSteamVRDisconnectedBuilder = StatusSteamVRDisconnectedBuilder.new( _fbb );
	builder.add_bridge_settings_name( bridge_settings_name );
	return builder.finish();

class StatusUnassignedHMD extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4
	}

	## Initialize the StatusSteamVRDisconnected with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusSteamVRDisconnected data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and tracker_id().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id() -> SolarXR.TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not field_start: return null
		return SolarXR.TrackerId.new( _fb_bytes, field_start )


## Builder class for StatusUnassignedHMD
class StatusUnassignedHMDBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the StatusUnassignedHMD table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( StatusUnassignedHMD.VT_TRACKER_ID, tracker_id_offset )

	## Finish building the StatusUnassignedHMD table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusUnassignedHMD table in one go using the provided [param _fbb]
static func create_StatusUnassignedHMD( _fbb: FlatBufferBuilder,
		tracker_id: int ) -> int :
	var builder: StatusUnassignedHMDBuilder = StatusUnassignedHMDBuilder.new( _fbb );
	builder.add_tracker_id( tracker_id );
	return builder.finish();

class StatusSystemRequest extends FlatBuffer:


	## Initialize the StatusUnassignedHMD with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusUnassignedHMD data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for StatusSystemRequest
class StatusSystemRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the StatusSystemRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusSystemRequest table in one go using the provided [param _fbb]
static func create_StatusSystemRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: StatusSystemRequestBuilder = StatusSystemRequestBuilder.new( _fbb );
	return builder.finish();

class StatusSystemResponse extends FlatBuffer:

	enum {
		VT_CURRENT_STATUSES = 4
	}

	## Initialize the StatusSystemRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusSystemRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_CURRENT_STATUSES)
			and verify_vector_u32(verifier, VT_CURRENT_STATUSES)
			and current_statuses_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if current_statuses is present in the buffer, else false
	func current_statuses_is_present() -> bool:
		return get_field_offset( VT_CURRENT_STATUSES )

	func current_statuses_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.StatusMessage.new()
		for i in current_statuses_size():
			if not current_statuses_at(i, tmp).verify(verifier):
				return false
		return true

	func current_statuses_size() -> int:
		var array_start: int = get_offset_field_start( VT_CURRENT_STATUSES )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func current_statuses_at( idx: int, into: StatusMessage = null ) -> StatusMessage:
		var field_start: int = get_offset_field_start( VT_CURRENT_STATUSES )
		assert(field_start, 'Field "current_statuses" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.StatusMessage.new( _fb_bytes, element_pos + element_offset )

	func current_statuses() -> Array:
		var array_start: int = get_offset_field_start( VT_CURRENT_STATUSES )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.StatusMessage.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for StatusSystemResponse
class StatusSystemResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the current_statuses field to the StatusSystemResponse table
	func add_current_statuses( current_statuses_offset: int ) -> void:
		fbb_.add_offset( StatusSystemResponse.VT_CURRENT_STATUSES, current_statuses_offset )

	## Finish building the StatusSystemResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusSystemResponse table in one go using the provided [param _fbb]
static func create_StatusSystemResponse( _fbb: FlatBufferBuilder,
		current_statuses: int ) -> int :
	var builder: StatusSystemResponseBuilder = StatusSystemResponseBuilder.new( _fbb );
	builder.add_current_statuses( current_statuses );
	return builder.finish();

class StatusSystemUpdate extends FlatBuffer:

	enum {
		VT_NEW_STATUS = 4
	}

	## Initialize the StatusSystemResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusSystemResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_NEW_STATUS)
			and new_status().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if new_status is present in the buffer, else false
	func new_status_is_present() -> bool:
		return get_field_offset( VT_NEW_STATUS )

	func new_status() -> SolarXR.StatusMessage:
		var field_start: int = get_offset_field_start( VT_NEW_STATUS )
		if not field_start: return null
		return SolarXR.StatusMessage.new( _fb_bytes, field_start )


## Builder class for StatusSystemUpdate
class StatusSystemUpdateBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the new_status field to the StatusSystemUpdate table
	func add_new_status( new_status_offset: int ) -> void:
		fbb_.add_offset( StatusSystemUpdate.VT_NEW_STATUS, new_status_offset )

	## Finish building the StatusSystemUpdate table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusSystemUpdate table in one go using the provided [param _fbb]
static func create_StatusSystemUpdate( _fbb: FlatBufferBuilder,
		new_status: int ) -> int :
	var builder: StatusSystemUpdateBuilder = StatusSystemUpdateBuilder.new( _fbb );
	builder.add_new_status( new_status );
	return builder.finish();

class StatusSystemFixed extends FlatBuffer:

	enum {
		VT_FIXED_STATUS_ID = 4
	}

	## Initialize the StatusSystemUpdate with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusSystemUpdate data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u32(verifier, VT_FIXED_STATUS_ID, 4)
			and verify_end_table(verifier)
		)

	## Return true if fixed_status_id is present in the buffer, else false
	func fixed_status_id_is_present() -> bool:
		return get_field_offset( VT_FIXED_STATUS_ID )

	func fixed_status_id() -> int:
		var field_start: int = get_inline_field_start( VT_FIXED_STATUS_ID )
		if not field_start: return 0
		return _fb_bytes.decode_u32( field_start )


## Builder class for StatusSystemFixed
class StatusSystemFixedBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the fixed_status_id field to the StatusSystemFixed table
	func add_fixed_status_id( fixed_status_id: int ) -> void:
		fbb_.add_element_uint_default( StatusSystemFixed.VT_FIXED_STATUS_ID, fixed_status_id, 0 )

	## Finish building the StatusSystemFixed table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusSystemFixed table in one go using the provided [param _fbb]
static func create_StatusSystemFixed( _fbb: FlatBufferBuilder,
		fixed_status_id: int ) -> int :
	var builder: StatusSystemFixedBuilder = StatusSystemFixedBuilder.new( _fbb );
	builder.add_fixed_status_id( fixed_status_id );
	return builder.finish();

class StatusPublicNetwork extends FlatBuffer:

	enum {
		VT_ADAPTERS = 4
	}

	## Initialize the StatusSystemFixed with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusSystemFixed data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_ADAPTERS)
			and verify_vector_u32(verifier, VT_ADAPTERS)
			and verify_vector_of_variant(verifier, VT_ADAPTERS, TYPE_STRING)
			and verify_end_table(verifier)
		)

	## Return true if adapters is present in the buffer, else false
	func adapters_is_present() -> bool:
		return get_field_offset( VT_ADAPTERS )

	func adapters_size() -> int:
		var array_start: int = get_offset_field_start( VT_ADAPTERS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func adapters_at( index: int ) -> String:
		var array_start: int = get_offset_field_start( VT_ADAPTERS )
		if not array_start: return ''
		array_start += 4
		var string_start: int = array_start + index * 4
		string_start += _fb_bytes.decode_u32( string_start )
		return decode_variant( string_start, TYPE_STRING )

	func adapters() -> PackedStringArray:
		var array_start: int = get_offset_field_start( VT_ADAPTERS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: PackedStringArray
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var idx: int = array_start + i * 4
			var element_start: int = idx + _fb_bytes.decode_u32( idx )
			array[i] = decode_variant( element_start, TYPE_STRING )
		return array


## Builder class for StatusPublicNetwork
class StatusPublicNetworkBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the adapters field to the StatusPublicNetwork table
	func add_adapters( adapters_offset: int ) -> void:
		fbb_.add_offset( StatusPublicNetwork.VT_ADAPTERS, adapters_offset )

	## Finish building the StatusPublicNetwork table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusPublicNetwork table in one go using the provided [param _fbb]
static func create_StatusPublicNetwork( _fbb: FlatBufferBuilder,
		adapters: int ) -> int :
	var builder: StatusPublicNetworkBuilder = StatusPublicNetworkBuilder.new( _fbb );
	builder.add_adapters( adapters );
	return builder.finish();

class StatusMessage extends FlatBuffer:

	enum {
		VT_ID = 4,
		VT_PRIORITIZED = 6,
		VT_DATA_TYPE = 8,
		VT_DATA = 10
	}

	## Initialize the StatusPublicNetwork with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusPublicNetwork data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u32(verifier, VT_ID, 4)
			and verify_field_u8(verifier, VT_PRIORITIZED, 1)
			and verify_field_u8(verifier, VT_DATA_TYPE, 1)
			and verify_offset(verifier, VT_DATA)
			and SolarXR.status_data_verify(verifier, data(), data_type())
			and verify_end_table(verifier)
		)

	## Return true if id is present in the buffer, else false
	func id_is_present() -> bool:
		return get_field_offset( VT_ID )

	func id() -> int:
		var field_start: int = get_inline_field_start( VT_ID )
		if not field_start: return 0
		return _fb_bytes.decode_u32( field_start )

	## Return true if prioritized is present in the buffer, else false
	func prioritized_is_present() -> bool:
		return get_field_offset( VT_PRIORITIZED )

	func prioritized() -> bool:
		var field_start: int = get_inline_field_start( VT_PRIORITIZED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if data is present in the buffer, else false
	func data_is_present() -> bool:
		return get_field_offset( VT_DATA )

	## Get the union type of the data_type field
	func data_type() -> StatusData:
		var field_start: int = get_inline_field_start( VT_DATA_TYPE )
		if not field_start: return 0 as StatusData
		var decoded: StatusData = _fb_bytes.decode_u8( field_start )
		return decoded

	func data() -> Variant:
		var field_start: int = get_offset_field_start( VT_DATA )
		if not field_start: return null
		match( data_type() ):
			SolarXR.StatusData.STATUS_TRACKER_RESET:
				return SolarXR.StatusTrackerReset.new( _fb_bytes, field_start )
			SolarXR.StatusData.STATUS_TRACKER_ERROR:
				return SolarXR.StatusTrackerError.new( _fb_bytes, field_start )
			SolarXR.StatusData.STATUS_STEAM_VRDISCONNECTED:
				return SolarXR.StatusSteamVRDisconnected.new( _fb_bytes, field_start )
			SolarXR.StatusData.STATUS_UNASSIGNED_HMD:
				return SolarXR.StatusUnassignedHMD.new( _fb_bytes, field_start )
			SolarXR.StatusData.STATUS_PUBLIC_NETWORK:
				return SolarXR.StatusPublicNetwork.new( _fb_bytes, field_start )
		return null


## Builder class for StatusMessage
class StatusMessageBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the id field to the StatusMessage table
	func add_id( id: int ) -> void:
		fbb_.add_element_uint_default( StatusMessage.VT_ID, id, 0 )

	## Add the prioritized field to the StatusMessage table
	func add_prioritized( prioritized: bool ) -> void:
		fbb_.add_element_bool_default( StatusMessage.VT_PRIORITIZED, prioritized, 0 )

	## Add the data_type field to the StatusMessage table
	func add_data_type( data_type: StatusData ) -> void:
		fbb_.add_element_ubyte( StatusMessage.VT_DATA_TYPE, data_type )

	## Add the data field to the StatusMessage table
	func add_data( data_offset: int ) -> void:
		fbb_.add_offset( StatusMessage.VT_DATA, data_offset )

	## Finish building the StatusMessage table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StatusMessage table in one go using the provided [param _fbb]
static func create_StatusMessage( _fbb: FlatBufferBuilder,
		id: int,
		prioritized: bool,
		data_type: StatusData,
		data: int ) -> int :
	var builder: StatusMessageBuilder = StatusMessageBuilder.new( _fbb );
	builder.add_data( data );
	builder.add_id( id );
	builder.add_data_type( data_type );
	builder.add_prioritized( prioritized );
	return builder.finish();

class SetPauseTrackingRequest extends FlatBuffer:

	enum {
		VT_PAUSETRACKING = 4
	}

	## Initialize the StatusMessage with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StatusMessage data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_PAUSETRACKING, 1)
			and verify_end_table(verifier)
		)

	## Return true if pauseTracking is present in the buffer, else false
	func pauseTracking_is_present() -> bool:
		return get_field_offset( VT_PAUSETRACKING )

	func pauseTracking() -> bool:
		var field_start: int = get_inline_field_start( VT_PAUSETRACKING )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for SetPauseTrackingRequest
class SetPauseTrackingRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the pauseTracking field to the SetPauseTrackingRequest table
	func add_pauseTracking( pauseTracking: bool ) -> void:
		fbb_.add_element_bool_default( SetPauseTrackingRequest.VT_PAUSETRACKING, pauseTracking, 0 )

	## Finish building the SetPauseTrackingRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SetPauseTrackingRequest table in one go using the provided [param _fbb]
static func create_SetPauseTrackingRequest( _fbb: FlatBufferBuilder,
		pauseTracking: bool ) -> int :
	var builder: SetPauseTrackingRequestBuilder = SetPauseTrackingRequestBuilder.new( _fbb );
	builder.add_pauseTracking( pauseTracking );
	return builder.finish();

class ClearMountingResetRequest extends FlatBuffer:


	## Initialize the SetPauseTrackingRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SetPauseTrackingRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for ClearMountingResetRequest
class ClearMountingResetRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the ClearMountingResetRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ClearMountingResetRequest table in one go using the provided [param _fbb]
static func create_ClearMountingResetRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: ClearMountingResetRequestBuilder = ClearMountingResetRequestBuilder.new( _fbb );
	return builder.finish();

class SaveFileNotification extends FlatBuffer:

	enum {
		VT_DATA = 4,
		VT_MIME_TYPE = 6,
		VT_FILE_EXTENSION = 8,
		VT_EXPECTED_DIR = 10,
		VT_EXPECTED_FILENAME = 12
	}

	## Initialize the ClearMountingResetRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ClearMountingResetRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_DATA)
			and verify_vector_u8(verifier, VT_DATA)
			and verify_offset(verifier, VT_MIME_TYPE)
			and verify_string( verifier, VT_MIME_TYPE )
			and verify_offset(verifier, VT_FILE_EXTENSION)
			and verify_string( verifier, VT_FILE_EXTENSION )
			and verify_field_u8(verifier, VT_EXPECTED_DIR, 1)
			and verify_offset(verifier, VT_EXPECTED_FILENAME)
			and verify_string( verifier, VT_EXPECTED_FILENAME )
			and verify_end_table(verifier)
		)

	## Return true if data is present in the buffer, else false
	func data_is_present() -> bool:
		return get_field_offset( VT_DATA )

	func data_size() -> int:
		var array_start: int = get_offset_field_start( VT_DATA )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	## Access elements of data by [param index]
	func data_at( index: int ) -> int:
		var array_start: int = get_offset_field_start( VT_DATA )
		assert(array_start, 'access to invalid vector of enum')
		array_start += 4
		return _fb_bytes[array_start + index]

	## Decode and return all elements of data as an [PackedByteArray]
	func data() -> PackedByteArray:
		var array_start: int = get_offset_field_start( VT_DATA )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		return _fb_bytes.slice( array_start, array_start + array_size )

	## Return true if mime_type is present in the buffer, else false
	func mime_type_is_present() -> bool:
		return get_field_offset( VT_MIME_TYPE )

	func mime_type() -> String:
		var field_start: int = get_offset_field_start( VT_MIME_TYPE )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if file_extension is present in the buffer, else false
	func file_extension_is_present() -> bool:
		return get_field_offset( VT_FILE_EXTENSION )

	func file_extension() -> String:
		var field_start: int = get_offset_field_start( VT_FILE_EXTENSION )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if expected_dir is present in the buffer, else false
	func expected_dir_is_present() -> bool:
		return get_field_offset( VT_EXPECTED_DIR )

	func expected_dir() -> ComputerDirectory:
		var field_start: int = get_inline_field_start( VT_EXPECTED_DIR )
		if not field_start: return 0 as ComputerDirectory
		var decoded: ComputerDirectory = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if expected_filename is present in the buffer, else false
	func expected_filename_is_present() -> bool:
		return get_field_offset( VT_EXPECTED_FILENAME )

	func expected_filename() -> String:
		var field_start: int = get_offset_field_start( VT_EXPECTED_FILENAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for SaveFileNotification
class SaveFileNotificationBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the data field to the SaveFileNotification table
	func add_data( data_offset: int ) -> void:
		fbb_.add_offset( SaveFileNotification.VT_DATA, data_offset )

	## Add the mime_type field to the SaveFileNotification table
	func add_mime_type( mime_type_offset: int ) -> void:
		fbb_.add_offset( SaveFileNotification.VT_MIME_TYPE, mime_type_offset )

	## Add the file_extension field to the SaveFileNotification table
	func add_file_extension( file_extension_offset: int ) -> void:
		fbb_.add_offset( SaveFileNotification.VT_FILE_EXTENSION, file_extension_offset )

	## Add the expected_dir field to the SaveFileNotification table
	func add_expected_dir( expected_dir: ComputerDirectory ) -> void:
		fbb_.add_element_ubyte( SaveFileNotification.VT_EXPECTED_DIR, expected_dir )

	## Add the expected_filename field to the SaveFileNotification table
	func add_expected_filename( expected_filename_offset: int ) -> void:
		fbb_.add_offset( SaveFileNotification.VT_EXPECTED_FILENAME, expected_filename_offset )

	## Finish building the SaveFileNotification table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SaveFileNotification table in one go using the provided [param _fbb]
static func create_SaveFileNotification( _fbb: FlatBufferBuilder,
		data: int,
		mime_type: int,
		file_extension: int,
		expected_dir: ComputerDirectory,
		expected_filename: int ) -> int :
	var builder: SaveFileNotificationBuilder = SaveFileNotificationBuilder.new( _fbb );
	builder.add_expected_filename( expected_filename );
	builder.add_file_extension( file_extension );
	builder.add_mime_type( mime_type );
	builder.add_data( data );
	builder.add_expected_dir( expected_dir );
	return builder.finish();

class SerialDevicePort extends FlatBuffer:

	enum {
		VT_PORT = 4
	}

	## Initialize the SaveFileNotification with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SaveFileNotification data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_PORT)
			and verify_string( verifier, VT_PORT )
			and verify_end_table(verifier)
		)

	## Return true if port is present in the buffer, else false
	func port_is_present() -> bool:
		return get_field_offset( VT_PORT )

	func port() -> String:
		var field_start: int = get_offset_field_start( VT_PORT )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for SerialDevicePort
class SerialDevicePortBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the port field to the SerialDevicePort table
	func add_port( port_offset: int ) -> void:
		fbb_.add_offset( SerialDevicePort.VT_PORT, port_offset )

	## Finish building the SerialDevicePort table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialDevicePort table in one go using the provided [param _fbb]
static func create_SerialDevicePort( _fbb: FlatBufferBuilder,
		port: int ) -> int :
	var builder: SerialDevicePortBuilder = SerialDevicePortBuilder.new( _fbb );
	builder.add_port( port );
	return builder.finish();

class FirmwarePart extends FlatBuffer:

	enum {
		VT_URL = 4,
		VT_OFFSET = 6,
		VT_DIGEST = 8
	}

	## Initialize the SerialDevicePort with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialDevicePort data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_URL)
			and verify_string( verifier, VT_URL )
			and verify_field_u32(verifier, VT_OFFSET, 4)
			and verify_offset(verifier, VT_DIGEST)
			and verify_string( verifier, VT_DIGEST )
			and verify_end_table(verifier)
		)

	## Return true if url is present in the buffer, else false
	func url_is_present() -> bool:
		return get_field_offset( VT_URL )

	func url() -> String:
		var field_start: int = get_offset_field_start( VT_URL )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if offset is present in the buffer, else false
	func offset_is_present() -> bool:
		return get_field_offset( VT_OFFSET )

	func offset() -> int:
		var field_start: int = get_inline_field_start( VT_OFFSET )
		if not field_start: return 0
		return _fb_bytes.decode_u32( field_start )

	## Return true if digest is present in the buffer, else false
	func digest_is_present() -> bool:
		return get_field_offset( VT_DIGEST )

	func digest() -> String:
		var field_start: int = get_offset_field_start( VT_DIGEST )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for FirmwarePart
class FirmwarePartBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the url field to the FirmwarePart table
	func add_url( url_offset: int ) -> void:
		fbb_.add_offset( FirmwarePart.VT_URL, url_offset )

	## Add the offset field to the FirmwarePart table
	func add_offset( offset: int ) -> void:
		fbb_.add_element_uint_default( FirmwarePart.VT_OFFSET, offset, 0 )

	## Add the digest field to the FirmwarePart table
	func add_digest( digest_offset: int ) -> void:
		fbb_.add_offset( FirmwarePart.VT_DIGEST, digest_offset )

	## Finish building the FirmwarePart table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a FirmwarePart table in one go using the provided [param _fbb]
static func create_FirmwarePart( _fbb: FlatBufferBuilder,
		url: int,
		offset: int,
		digest: int ) -> int :
	var builder: FirmwarePartBuilder = FirmwarePartBuilder.new( _fbb );
	builder.add_digest( digest );
	builder.add_offset( offset );
	builder.add_url( url );
	return builder.finish();

class FirmwareUpdateRequest extends FlatBuffer:

	enum {
		VT_METHOD_TYPE = 4,
		VT_METHOD = 6
	}

	## Initialize the FirmwarePart with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the FirmwarePart data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_METHOD_TYPE, 1)
			and verify_offset(verifier, VT_METHOD)
			and SolarXR.firmware_update_method_verify(verifier, method(), method_type())
			and verify_end_table(verifier)
		)

	## Return true if method is present in the buffer, else false
	func method_is_present() -> bool:
		return get_field_offset( VT_METHOD )

	## Get the union type of the method_type field
	func method_type() -> FirmwareUpdateMethod:
		var field_start: int = get_inline_field_start( VT_METHOD_TYPE )
		if not field_start: return 0 as FirmwareUpdateMethod
		var decoded: FirmwareUpdateMethod = _fb_bytes.decode_u8( field_start )
		return decoded

	func method() -> Variant:
		var field_start: int = get_offset_field_start( VT_METHOD )
		if not field_start: return null
		match( method_type() ):
			SolarXR.FirmwareUpdateMethod.OTAFIRMWARE_UPDATE:
				return SolarXR.OTAFirmwareUpdate.new( _fb_bytes, field_start )
			SolarXR.FirmwareUpdateMethod.SERIAL_FIRMWARE_UPDATE:
				return SolarXR.SerialFirmwareUpdate.new( _fb_bytes, field_start )
		return null


## Builder class for FirmwareUpdateRequest
class FirmwareUpdateRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the method_type field to the FirmwareUpdateRequest table
	func add_method_type( method_type: FirmwareUpdateMethod ) -> void:
		fbb_.add_element_ubyte( FirmwareUpdateRequest.VT_METHOD_TYPE, method_type )

	## Add the method field to the FirmwareUpdateRequest table
	func add_method( method_offset: int ) -> void:
		fbb_.add_offset( FirmwareUpdateRequest.VT_METHOD, method_offset )

	## Finish building the FirmwareUpdateRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a FirmwareUpdateRequest table in one go using the provided [param _fbb]
static func create_FirmwareUpdateRequest( _fbb: FlatBufferBuilder,
		method_type: FirmwareUpdateMethod,
		method: int ) -> int :
	var builder: FirmwareUpdateRequestBuilder = FirmwareUpdateRequestBuilder.new( _fbb );
	builder.add_method( method );
	builder.add_method_type( method_type );
	return builder.finish();

class OTAFirmwareUpdate extends FlatBuffer:

	enum {
		VT_DEVICE_ID = 4,
		VT_FIRMWARE_PART = 6
	}

	## Initialize the FirmwareUpdateRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the FirmwareUpdateRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			# FIXME: custom struct
			#  and verify_field<was templated>u32(verifier, VT_DEVICE_ID, 1)
			and verify_offset(verifier, VT_FIRMWARE_PART)
			and firmware_part().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if device_id is present in the buffer, else false
	func device_id_is_present() -> bool:
		return get_field_offset( VT_DEVICE_ID )

	func device_id() -> DeviceId:
		var field_start: int = get_inline_field_start( VT_DEVICE_ID )
		if not field_start: return null
		return SolarXR.DeviceId.new( _fb_bytes, field_start )

	## Return true if firmware_part is present in the buffer, else false
	func firmware_part_is_present() -> bool:
		return get_field_offset( VT_FIRMWARE_PART )

	func firmware_part() -> SolarXR.FirmwarePart:
		var field_start: int = get_offset_field_start( VT_FIRMWARE_PART )
		if not field_start: return null
		return SolarXR.FirmwarePart.new( _fb_bytes, field_start )


## Builder class for OTAFirmwareUpdate
class OTAFirmwareUpdateBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the device_id field to the OTAFirmwareUpdate table
	func add_device_id( device_id: DeviceId ) -> void:
		fbb_.add_bytes( OTAFirmwareUpdate.VT_DEVICE_ID, device_id._fb_bytes ) 

	## Add the firmware_part field to the OTAFirmwareUpdate table
	func add_firmware_part( firmware_part_offset: int ) -> void:
		fbb_.add_offset( OTAFirmwareUpdate.VT_FIRMWARE_PART, firmware_part_offset )

	## Finish building the OTAFirmwareUpdate table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a OTAFirmwareUpdate table in one go using the provided [param _fbb]
static func create_OTAFirmwareUpdate( _fbb: FlatBufferBuilder,
		device_id: DeviceId,
		firmware_part: int ) -> int :
	var builder: OTAFirmwareUpdateBuilder = OTAFirmwareUpdateBuilder.new( _fbb );
	builder.add_firmware_part( firmware_part );
	builder.add_device_id( device_id );
	return builder.finish();

class SerialFirmwareUpdate extends FlatBuffer:

	enum {
		VT_DEVICE_ID = 4,
		VT_NEEDMANUALREBOOT = 6,
		VT_SSID = 8,
		VT_PASSWORD = 10,
		VT_FIRMWARE_PART = 12
	}

	## Initialize the OTAFirmwareUpdate with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the OTAFirmwareUpdate data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_DEVICE_ID)
			and device_id().verify(verifier)
			and verify_field_u8(verifier, VT_NEEDMANUALREBOOT, 1)
			and verify_offset(verifier, VT_SSID)
			and verify_string( verifier, VT_SSID )
			and verify_offset(verifier, VT_PASSWORD)
			and verify_string( verifier, VT_PASSWORD )
			and verify_offset(verifier, VT_FIRMWARE_PART)
			and verify_vector_u32(verifier, VT_FIRMWARE_PART)
			and firmware_part_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if device_id is present in the buffer, else false
	func device_id_is_present() -> bool:
		return get_field_offset( VT_DEVICE_ID )

	func device_id() -> SolarXR.SerialDevicePort:
		var field_start: int = get_offset_field_start( VT_DEVICE_ID )
		if not field_start: return null
		return SolarXR.SerialDevicePort.new( _fb_bytes, field_start )

	## Return true if needManualReboot is present in the buffer, else false
	func needManualReboot_is_present() -> bool:
		return get_field_offset( VT_NEEDMANUALREBOOT )

	func needManualReboot() -> bool:
		var field_start: int = get_inline_field_start( VT_NEEDMANUALREBOOT )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if ssid is present in the buffer, else false
	func ssid_is_present() -> bool:
		return get_field_offset( VT_SSID )

	func ssid() -> String:
		var field_start: int = get_offset_field_start( VT_SSID )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if password is present in the buffer, else false
	func password_is_present() -> bool:
		return get_field_offset( VT_PASSWORD )

	func password() -> String:
		var field_start: int = get_offset_field_start( VT_PASSWORD )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if firmware_part is present in the buffer, else false
	func firmware_part_is_present() -> bool:
		return get_field_offset( VT_FIRMWARE_PART )

	func firmware_part_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.FirmwarePart.new()
		for i in firmware_part_size():
			if not firmware_part_at(i, tmp).verify(verifier):
				return false
		return true

	func firmware_part_size() -> int:
		var array_start: int = get_offset_field_start( VT_FIRMWARE_PART )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func firmware_part_at( idx: int, into: FirmwarePart = null ) -> FirmwarePart:
		var field_start: int = get_offset_field_start( VT_FIRMWARE_PART )
		assert(field_start, 'Field "firmware_part" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.FirmwarePart.new( _fb_bytes, element_pos + element_offset )

	func firmware_part() -> Array:
		var array_start: int = get_offset_field_start( VT_FIRMWARE_PART )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.FirmwarePart.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for SerialFirmwareUpdate
class SerialFirmwareUpdateBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the device_id field to the SerialFirmwareUpdate table
	func add_device_id( device_id_offset: int ) -> void:
		fbb_.add_offset( SerialFirmwareUpdate.VT_DEVICE_ID, device_id_offset )

	## Add the needManualReboot field to the SerialFirmwareUpdate table
	func add_needManualReboot( needManualReboot: bool ) -> void:
		fbb_.add_element_bool_default( SerialFirmwareUpdate.VT_NEEDMANUALREBOOT, needManualReboot, 0 )

	## Add the ssid field to the SerialFirmwareUpdate table
	func add_ssid( ssid_offset: int ) -> void:
		fbb_.add_offset( SerialFirmwareUpdate.VT_SSID, ssid_offset )

	## Add the password field to the SerialFirmwareUpdate table
	func add_password( password_offset: int ) -> void:
		fbb_.add_offset( SerialFirmwareUpdate.VT_PASSWORD, password_offset )

	## Add the firmware_part field to the SerialFirmwareUpdate table
	func add_firmware_part( firmware_part_offset: int ) -> void:
		fbb_.add_offset( SerialFirmwareUpdate.VT_FIRMWARE_PART, firmware_part_offset )

	## Finish building the SerialFirmwareUpdate table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialFirmwareUpdate table in one go using the provided [param _fbb]
static func create_SerialFirmwareUpdate( _fbb: FlatBufferBuilder,
		device_id: int,
		needManualReboot: bool,
		ssid: int,
		password: int,
		firmware_part: int ) -> int :
	var builder: SerialFirmwareUpdateBuilder = SerialFirmwareUpdateBuilder.new( _fbb );
	builder.add_firmware_part( firmware_part );
	builder.add_password( password );
	builder.add_ssid( ssid );
	builder.add_device_id( device_id );
	builder.add_needManualReboot( needManualReboot );
	return builder.finish();

class FirmwareUpdateStatusResponse extends FlatBuffer:

	enum {
		VT_DEVICE_ID_TYPE = 4,
		VT_DEVICE_ID = 6,
		VT_STATUS = 8,
		VT_PROGRESS = 10
	}

	## Initialize the SerialFirmwareUpdate with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialFirmwareUpdate data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_DEVICE_ID_TYPE, 1)
			and verify_offset(verifier, VT_DEVICE_ID)
			and SolarXR.firmware_update_device_id_verify(verifier, device_id(), device_id_type())
			and verify_field_u8(verifier, VT_STATUS, 1)
			and verify_field_s8(verifier, VT_PROGRESS, 1)
			and verify_end_table(verifier)
		)

	## Return true if device_id is present in the buffer, else false
	func device_id_is_present() -> bool:
		return get_field_offset( VT_DEVICE_ID )

	## Get the union type of the device_id_type field
	func device_id_type() -> FirmwareUpdateDeviceId:
		var field_start: int = get_inline_field_start( VT_DEVICE_ID_TYPE )
		if not field_start: return 0 as FirmwareUpdateDeviceId
		var decoded: FirmwareUpdateDeviceId = _fb_bytes.decode_u8( field_start )
		return decoded

	func device_id() -> Variant:
		var field_start: int = get_offset_field_start( VT_DEVICE_ID )
		if not field_start: return null
		match( device_id_type() ):
			SolarXR.FirmwareUpdateDeviceId.DEVICE_ID_TABLE:
				return SolarXR.DeviceIdTable.new( _fb_bytes, field_start )
			SolarXR.FirmwareUpdateDeviceId.SERIAL_DEVICE_PORT:
				return SolarXR.SerialDevicePort.new( _fb_bytes, field_start )
		return null

	## Return true if status is present in the buffer, else false
	func status_is_present() -> bool:
		return get_field_offset( VT_STATUS )

	func status() -> FirmwareUpdateStatus:
		var field_start: int = get_inline_field_start( VT_STATUS )
		if not field_start: return 0 as FirmwareUpdateStatus
		var decoded: FirmwareUpdateStatus = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if progress is present in the buffer, else false
	func progress_is_present() -> bool:
		return get_field_offset( VT_PROGRESS )

	func progress() -> int:
		var field_start: int = get_inline_field_start( VT_PROGRESS )
		if not field_start: return 0
		return _fb_bytes.decode_s8( field_start )


## Builder class for FirmwareUpdateStatusResponse
class FirmwareUpdateStatusResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the device_id_type field to the FirmwareUpdateStatusResponse table
	func add_device_id_type( device_id_type: FirmwareUpdateDeviceId ) -> void:
		fbb_.add_element_ubyte( FirmwareUpdateStatusResponse.VT_DEVICE_ID_TYPE, device_id_type )

	## Add the device_id field to the FirmwareUpdateStatusResponse table
	func add_device_id( device_id_offset: int ) -> void:
		fbb_.add_offset( FirmwareUpdateStatusResponse.VT_DEVICE_ID, device_id_offset )

	## Add the status field to the FirmwareUpdateStatusResponse table
	func add_status( status: FirmwareUpdateStatus ) -> void:
		fbb_.add_element_ubyte( FirmwareUpdateStatusResponse.VT_STATUS, status )

	## Add the progress field to the FirmwareUpdateStatusResponse table
	func add_progress( progress: int ) -> void:
		fbb_.add_element_byte_default( FirmwareUpdateStatusResponse.VT_PROGRESS, progress, 0 )

	## Finish building the FirmwareUpdateStatusResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a FirmwareUpdateStatusResponse table in one go using the provided [param _fbb]
static func create_FirmwareUpdateStatusResponse( _fbb: FlatBufferBuilder,
		device_id_type: FirmwareUpdateDeviceId,
		device_id: int,
		status: FirmwareUpdateStatus,
		progress: int ) -> int :
	var builder: FirmwareUpdateStatusResponseBuilder = FirmwareUpdateStatusResponseBuilder.new( _fbb );
	builder.add_device_id( device_id );
	builder.add_progress( progress );
	builder.add_status( status );
	builder.add_device_id_type( device_id_type );
	return builder.finish();

class FirmwareUpdateStopQueuesRequest extends FlatBuffer:


	## Initialize the FirmwareUpdateStatusResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the FirmwareUpdateStatusResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for FirmwareUpdateStopQueuesRequest
class FirmwareUpdateStopQueuesRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the FirmwareUpdateStopQueuesRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a FirmwareUpdateStopQueuesRequest table in one go using the provided [param _fbb]
static func create_FirmwareUpdateStopQueuesRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: FirmwareUpdateStopQueuesRequestBuilder = FirmwareUpdateStopQueuesRequestBuilder.new( _fbb );
	return builder.finish();

class TrackingPauseStateRequest extends FlatBuffer:


	## Initialize the FirmwareUpdateStopQueuesRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the FirmwareUpdateStopQueuesRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for TrackingPauseStateRequest
class TrackingPauseStateRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the TrackingPauseStateRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingPauseStateRequest table in one go using the provided [param _fbb]
static func create_TrackingPauseStateRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: TrackingPauseStateRequestBuilder = TrackingPauseStateRequestBuilder.new( _fbb );
	return builder.finish();

class TrackingPauseStateResponse extends FlatBuffer:

	enum {
		VT_TRACKINGPAUSED = 4
	}

	## Initialize the TrackingPauseStateRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingPauseStateRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_TRACKINGPAUSED, 1)
			and verify_end_table(verifier)
		)

	## Return true if trackingPaused is present in the buffer, else false
	func trackingPaused_is_present() -> bool:
		return get_field_offset( VT_TRACKINGPAUSED )

	func trackingPaused() -> bool:
		var field_start: int = get_inline_field_start( VT_TRACKINGPAUSED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for TrackingPauseStateResponse
class TrackingPauseStateResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the trackingPaused field to the TrackingPauseStateResponse table
	func add_trackingPaused( trackingPaused: bool ) -> void:
		fbb_.add_element_bool_default( TrackingPauseStateResponse.VT_TRACKINGPAUSED, trackingPaused, 0 )

	## Finish building the TrackingPauseStateResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingPauseStateResponse table in one go using the provided [param _fbb]
static func create_TrackingPauseStateResponse( _fbb: FlatBufferBuilder,
		trackingPaused: bool ) -> int :
	var builder: TrackingPauseStateResponseBuilder = TrackingPauseStateResponseBuilder.new( _fbb );
	builder.add_trackingPaused( trackingPaused );
	return builder.finish();

class SerialTrackerGetWifiScanRequest extends FlatBuffer:


	## Initialize the TrackingPauseStateResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingPauseStateResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for SerialTrackerGetWifiScanRequest
class SerialTrackerGetWifiScanRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the SerialTrackerGetWifiScanRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SerialTrackerGetWifiScanRequest table in one go using the provided [param _fbb]
static func create_SerialTrackerGetWifiScanRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: SerialTrackerGetWifiScanRequestBuilder = SerialTrackerGetWifiScanRequestBuilder.new( _fbb );
	return builder.finish();

class UnknownDeviceHandshakeNotification extends FlatBuffer:

	enum {
		VT_MAC_ADDRESS = 4
	}

	## Initialize the SerialTrackerGetWifiScanRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SerialTrackerGetWifiScanRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_MAC_ADDRESS)
			and verify_string( verifier, VT_MAC_ADDRESS )
			and verify_end_table(verifier)
		)

	## Return true if mac_address is present in the buffer, else false
	func mac_address_is_present() -> bool:
		return get_field_offset( VT_MAC_ADDRESS )

	func mac_address() -> String:
		var field_start: int = get_offset_field_start( VT_MAC_ADDRESS )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for UnknownDeviceHandshakeNotification
class UnknownDeviceHandshakeNotificationBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the mac_address field to the UnknownDeviceHandshakeNotification table
	func add_mac_address( mac_address_offset: int ) -> void:
		fbb_.add_offset( UnknownDeviceHandshakeNotification.VT_MAC_ADDRESS, mac_address_offset )

	## Finish building the UnknownDeviceHandshakeNotification table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a UnknownDeviceHandshakeNotification table in one go using the provided [param _fbb]
static func create_UnknownDeviceHandshakeNotification( _fbb: FlatBufferBuilder,
		mac_address: int ) -> int :
	var builder: UnknownDeviceHandshakeNotificationBuilder = UnknownDeviceHandshakeNotificationBuilder.new( _fbb );
	builder.add_mac_address( mac_address );
	return builder.finish();

class AddUnknownDeviceRequest extends FlatBuffer:

	enum {
		VT_MAC_ADDRESS = 4
	}

	## Initialize the UnknownDeviceHandshakeNotification with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the UnknownDeviceHandshakeNotification data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_MAC_ADDRESS)
			and verify_string( verifier, VT_MAC_ADDRESS )
			and verify_end_table(verifier)
		)

	## Return true if mac_address is present in the buffer, else false
	func mac_address_is_present() -> bool:
		return get_field_offset( VT_MAC_ADDRESS )

	func mac_address() -> String:
		var field_start: int = get_offset_field_start( VT_MAC_ADDRESS )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for AddUnknownDeviceRequest
class AddUnknownDeviceRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the mac_address field to the AddUnknownDeviceRequest table
	func add_mac_address( mac_address_offset: int ) -> void:
		fbb_.add_offset( AddUnknownDeviceRequest.VT_MAC_ADDRESS, mac_address_offset )

	## Finish building the AddUnknownDeviceRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a AddUnknownDeviceRequest table in one go using the provided [param _fbb]
static func create_AddUnknownDeviceRequest( _fbb: FlatBufferBuilder,
		mac_address: int ) -> int :
	var builder: AddUnknownDeviceRequestBuilder = AddUnknownDeviceRequestBuilder.new( _fbb );
	builder.add_mac_address( mac_address );
	return builder.finish();

class ForgetDeviceRequest extends FlatBuffer:

	enum {
		VT_MAC_ADDRESS = 4
	}

	## Initialize the AddUnknownDeviceRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the AddUnknownDeviceRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_MAC_ADDRESS)
			and verify_string( verifier, VT_MAC_ADDRESS )
			and verify_end_table(verifier)
		)

	## Return true if mac_address is present in the buffer, else false
	func mac_address_is_present() -> bool:
		return get_field_offset( VT_MAC_ADDRESS )

	func mac_address() -> String:
		var field_start: int = get_offset_field_start( VT_MAC_ADDRESS )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for ForgetDeviceRequest
class ForgetDeviceRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the mac_address field to the ForgetDeviceRequest table
	func add_mac_address( mac_address_offset: int ) -> void:
		fbb_.add_offset( ForgetDeviceRequest.VT_MAC_ADDRESS, mac_address_offset )

	## Finish building the ForgetDeviceRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ForgetDeviceRequest table in one go using the provided [param _fbb]
static func create_ForgetDeviceRequest( _fbb: FlatBufferBuilder,
		mac_address: int ) -> int :
	var builder: ForgetDeviceRequestBuilder = ForgetDeviceRequestBuilder.new( _fbb );
	builder.add_mac_address( mac_address );
	return builder.finish();

class SettingsResetRequest extends FlatBuffer:


	## Initialize the ForgetDeviceRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ForgetDeviceRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for SettingsResetRequest
class SettingsResetRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the SettingsResetRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SettingsResetRequest table in one go using the provided [param _fbb]
static func create_SettingsResetRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: SettingsResetRequestBuilder = SettingsResetRequestBuilder.new( _fbb );
	return builder.finish();

class MagToggleRequest extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4
	}

	## Initialize the SettingsResetRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SettingsResetRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and tracker_id().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id() -> SolarXR.TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not field_start: return null
		return SolarXR.TrackerId.new( _fb_bytes, field_start )


## Builder class for MagToggleRequest
class MagToggleRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the MagToggleRequest table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( MagToggleRequest.VT_TRACKER_ID, tracker_id_offset )

	## Finish building the MagToggleRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a MagToggleRequest table in one go using the provided [param _fbb]
static func create_MagToggleRequest( _fbb: FlatBufferBuilder,
		tracker_id: int ) -> int :
	var builder: MagToggleRequestBuilder = MagToggleRequestBuilder.new( _fbb );
	builder.add_tracker_id( tracker_id );
	return builder.finish();

class MagToggleResponse extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4,
		VT_ENABLE = 6
	}

	## Initialize the MagToggleRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the MagToggleRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and tracker_id().verify(verifier)
			and verify_field_u8(verifier, VT_ENABLE, 1)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id() -> SolarXR.TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not field_start: return null
		return SolarXR.TrackerId.new( _fb_bytes, field_start )

	## Return true if enable is present in the buffer, else false
	func enable_is_present() -> bool:
		return get_field_offset( VT_ENABLE )

	func enable() -> bool:
		var field_start: int = get_inline_field_start( VT_ENABLE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for MagToggleResponse
class MagToggleResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the MagToggleResponse table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( MagToggleResponse.VT_TRACKER_ID, tracker_id_offset )

	## Add the enable field to the MagToggleResponse table
	func add_enable( enable: bool ) -> void:
		fbb_.add_element_bool_default( MagToggleResponse.VT_ENABLE, enable, 0 )

	## Finish building the MagToggleResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a MagToggleResponse table in one go using the provided [param _fbb]
static func create_MagToggleResponse( _fbb: FlatBufferBuilder,
		tracker_id: int,
		enable: bool ) -> int :
	var builder: MagToggleResponseBuilder = MagToggleResponseBuilder.new( _fbb );
	builder.add_tracker_id( tracker_id );
	builder.add_enable( enable );
	return builder.finish();

class ChangeMagToggleRequest extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4,
		VT_ENABLE = 6
	}

	## Initialize the MagToggleResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the MagToggleResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and tracker_id().verify(verifier)
			and verify_field_u8(verifier, VT_ENABLE, 1)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id() -> SolarXR.TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not field_start: return null
		return SolarXR.TrackerId.new( _fb_bytes, field_start )

	## Return true if enable is present in the buffer, else false
	func enable_is_present() -> bool:
		return get_field_offset( VT_ENABLE )

	func enable() -> bool:
		var field_start: int = get_inline_field_start( VT_ENABLE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for ChangeMagToggleRequest
class ChangeMagToggleRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the ChangeMagToggleRequest table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( ChangeMagToggleRequest.VT_TRACKER_ID, tracker_id_offset )

	## Add the enable field to the ChangeMagToggleRequest table
	func add_enable( enable: bool ) -> void:
		fbb_.add_element_bool_default( ChangeMagToggleRequest.VT_ENABLE, enable, 0 )

	## Finish building the ChangeMagToggleRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ChangeMagToggleRequest table in one go using the provided [param _fbb]
static func create_ChangeMagToggleRequest( _fbb: FlatBufferBuilder,
		tracker_id: int,
		enable: bool ) -> int :
	var builder: ChangeMagToggleRequestBuilder = ChangeMagToggleRequestBuilder.new( _fbb );
	builder.add_tracker_id( tracker_id );
	builder.add_enable( enable );
	return builder.finish();

class VRCConfigValidity extends FlatBuffer:

	enum {
		VT_LEGACY_MODE_OK = 4,
		VT_SHOULDER_TRACKING_OK = 6,
		VT_USER_HEIGHT_OK = 8,
		VT_CALIBRATION_RANGE_OK = 10,
		VT_CALIBRATION_VISUALS_OK = 12,
		VT_TRACKER_MODEL_OK = 14,
		VT_SPINE_MODE_OK = 16,
		VT_AVATAR_MEASUREMENT_TYPE_OK = 18,
		VT_SHOULDER_WIDTH_COMPENSATION_OK = 20
	}

	## Initialize the ChangeMagToggleRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ChangeMagToggleRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_LEGACY_MODE_OK, 1)
			and verify_field_u8(verifier, VT_SHOULDER_TRACKING_OK, 1)
			and verify_field_u8(verifier, VT_USER_HEIGHT_OK, 1)
			and verify_field_u8(verifier, VT_CALIBRATION_RANGE_OK, 1)
			and verify_field_u8(verifier, VT_CALIBRATION_VISUALS_OK, 1)
			and verify_field_u8(verifier, VT_TRACKER_MODEL_OK, 1)
			and verify_field_u8(verifier, VT_SPINE_MODE_OK, 1)
			and verify_field_u8(verifier, VT_AVATAR_MEASUREMENT_TYPE_OK, 1)
			and verify_field_u8(verifier, VT_SHOULDER_WIDTH_COMPENSATION_OK, 1)
			and verify_end_table(verifier)
		)

	## Return true if legacy_mode_ok is present in the buffer, else false
	func legacy_mode_ok_is_present() -> bool:
		return get_field_offset( VT_LEGACY_MODE_OK )

	func legacy_mode_ok() -> bool:
		var field_start: int = get_inline_field_start( VT_LEGACY_MODE_OK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if shoulder_tracking_ok is present in the buffer, else false
	func shoulder_tracking_ok_is_present() -> bool:
		return get_field_offset( VT_SHOULDER_TRACKING_OK )

	func shoulder_tracking_ok() -> bool:
		var field_start: int = get_inline_field_start( VT_SHOULDER_TRACKING_OK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if user_height_ok is present in the buffer, else false
	func user_height_ok_is_present() -> bool:
		return get_field_offset( VT_USER_HEIGHT_OK )

	func user_height_ok() -> bool:
		var field_start: int = get_inline_field_start( VT_USER_HEIGHT_OK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if calibration_range_ok is present in the buffer, else false
	func calibration_range_ok_is_present() -> bool:
		return get_field_offset( VT_CALIBRATION_RANGE_OK )

	func calibration_range_ok() -> bool:
		var field_start: int = get_inline_field_start( VT_CALIBRATION_RANGE_OK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if calibration_visuals_ok is present in the buffer, else false
	func calibration_visuals_ok_is_present() -> bool:
		return get_field_offset( VT_CALIBRATION_VISUALS_OK )

	func calibration_visuals_ok() -> bool:
		var field_start: int = get_inline_field_start( VT_CALIBRATION_VISUALS_OK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if tracker_model_ok is present in the buffer, else false
	func tracker_model_ok_is_present() -> bool:
		return get_field_offset( VT_TRACKER_MODEL_OK )

	func tracker_model_ok() -> bool:
		var field_start: int = get_inline_field_start( VT_TRACKER_MODEL_OK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if spine_mode_ok is present in the buffer, else false
	func spine_mode_ok_is_present() -> bool:
		return get_field_offset( VT_SPINE_MODE_OK )

	func spine_mode_ok() -> bool:
		var field_start: int = get_inline_field_start( VT_SPINE_MODE_OK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if avatar_measurement_type_ok is present in the buffer, else false
	func avatar_measurement_type_ok_is_present() -> bool:
		return get_field_offset( VT_AVATAR_MEASUREMENT_TYPE_OK )

	func avatar_measurement_type_ok() -> bool:
		var field_start: int = get_inline_field_start( VT_AVATAR_MEASUREMENT_TYPE_OK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if shoulder_width_compensation_ok is present in the buffer, else false
	func shoulder_width_compensation_ok_is_present() -> bool:
		return get_field_offset( VT_SHOULDER_WIDTH_COMPENSATION_OK )

	func shoulder_width_compensation_ok() -> bool:
		var field_start: int = get_inline_field_start( VT_SHOULDER_WIDTH_COMPENSATION_OK )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for VRCConfigValidity
class VRCConfigValidityBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the legacy_mode_ok field to the VRCConfigValidity table
	func add_legacy_mode_ok( legacy_mode_ok: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValidity.VT_LEGACY_MODE_OK, legacy_mode_ok, 0 )

	## Add the shoulder_tracking_ok field to the VRCConfigValidity table
	func add_shoulder_tracking_ok( shoulder_tracking_ok: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValidity.VT_SHOULDER_TRACKING_OK, shoulder_tracking_ok, 0 )

	## Add the user_height_ok field to the VRCConfigValidity table
	func add_user_height_ok( user_height_ok: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValidity.VT_USER_HEIGHT_OK, user_height_ok, 0 )

	## Add the calibration_range_ok field to the VRCConfigValidity table
	func add_calibration_range_ok( calibration_range_ok: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValidity.VT_CALIBRATION_RANGE_OK, calibration_range_ok, 0 )

	## Add the calibration_visuals_ok field to the VRCConfigValidity table
	func add_calibration_visuals_ok( calibration_visuals_ok: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValidity.VT_CALIBRATION_VISUALS_OK, calibration_visuals_ok, 0 )

	## Add the tracker_model_ok field to the VRCConfigValidity table
	func add_tracker_model_ok( tracker_model_ok: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValidity.VT_TRACKER_MODEL_OK, tracker_model_ok, 0 )

	## Add the spine_mode_ok field to the VRCConfigValidity table
	func add_spine_mode_ok( spine_mode_ok: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValidity.VT_SPINE_MODE_OK, spine_mode_ok, 0 )

	## Add the avatar_measurement_type_ok field to the VRCConfigValidity table
	func add_avatar_measurement_type_ok( avatar_measurement_type_ok: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValidity.VT_AVATAR_MEASUREMENT_TYPE_OK, avatar_measurement_type_ok, 0 )

	## Add the shoulder_width_compensation_ok field to the VRCConfigValidity table
	func add_shoulder_width_compensation_ok( shoulder_width_compensation_ok: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValidity.VT_SHOULDER_WIDTH_COMPENSATION_OK, shoulder_width_compensation_ok, 0 )

	## Finish building the VRCConfigValidity table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VRCConfigValidity table in one go using the provided [param _fbb]
static func create_VRCConfigValidity( _fbb: FlatBufferBuilder,
		legacy_mode_ok: bool,
		shoulder_tracking_ok: bool,
		user_height_ok: bool,
		calibration_range_ok: bool,
		calibration_visuals_ok: bool,
		tracker_model_ok: bool,
		spine_mode_ok: bool,
		avatar_measurement_type_ok: bool,
		shoulder_width_compensation_ok: bool ) -> int :
	var builder: VRCConfigValidityBuilder = VRCConfigValidityBuilder.new( _fbb );
	builder.add_shoulder_width_compensation_ok( shoulder_width_compensation_ok );
	builder.add_avatar_measurement_type_ok( avatar_measurement_type_ok );
	builder.add_spine_mode_ok( spine_mode_ok );
	builder.add_tracker_model_ok( tracker_model_ok );
	builder.add_calibration_visuals_ok( calibration_visuals_ok );
	builder.add_calibration_range_ok( calibration_range_ok );
	builder.add_user_height_ok( user_height_ok );
	builder.add_shoulder_tracking_ok( shoulder_tracking_ok );
	builder.add_legacy_mode_ok( legacy_mode_ok );
	return builder.finish();

class VRCConfigValues extends FlatBuffer:

	enum {
		VT_LEGACY_MODE = 4,
		VT_SHOULDER_TRACKING_DISABLED = 6,
		VT_USER_HEIGHT = 8,
		VT_CALIBRATION_RANGE = 10,
		VT_CALIBRATION_VISUALS = 12,
		VT_TRACKER_MODEL = 14,
		VT_SPINE_MODE = 16,
		VT_AVATAR_MEASUREMENT_TYPE = 18,
		VT_SHOULDER_WIDTH_COMPENSATION = 20
	}

	## Initialize the VRCConfigValidity with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VRCConfigValidity data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_LEGACY_MODE, 1)
			and verify_field_u8(verifier, VT_SHOULDER_TRACKING_DISABLED, 1)
			and verify_field_float(verifier, VT_USER_HEIGHT, 4)
			and verify_field_float(verifier, VT_CALIBRATION_RANGE, 4)
			and verify_field_u8(verifier, VT_CALIBRATION_VISUALS, 1)
			and verify_field_u8(verifier, VT_TRACKER_MODEL, 1)
			and verify_field_u8(verifier, VT_SPINE_MODE, 1)
			and verify_field_u8(verifier, VT_AVATAR_MEASUREMENT_TYPE, 1)
			and verify_field_u8(verifier, VT_SHOULDER_WIDTH_COMPENSATION, 1)
			and verify_end_table(verifier)
		)

	## Return true if legacy_mode is present in the buffer, else false
	func legacy_mode_is_present() -> bool:
		return get_field_offset( VT_LEGACY_MODE )

	func legacy_mode() -> bool:
		var field_start: int = get_inline_field_start( VT_LEGACY_MODE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if shoulder_tracking_disabled is present in the buffer, else false
	func shoulder_tracking_disabled_is_present() -> bool:
		return get_field_offset( VT_SHOULDER_TRACKING_DISABLED )

	func shoulder_tracking_disabled() -> bool:
		var field_start: int = get_inline_field_start( VT_SHOULDER_TRACKING_DISABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if user_height is present in the buffer, else false
	func user_height_is_present() -> bool:
		return get_field_offset( VT_USER_HEIGHT )

	func user_height() -> float:
		var field_start: int = get_inline_field_start( VT_USER_HEIGHT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if calibration_range is present in the buffer, else false
	func calibration_range_is_present() -> bool:
		return get_field_offset( VT_CALIBRATION_RANGE )

	func calibration_range() -> float:
		var field_start: int = get_inline_field_start( VT_CALIBRATION_RANGE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if calibration_visuals is present in the buffer, else false
	func calibration_visuals_is_present() -> bool:
		return get_field_offset( VT_CALIBRATION_VISUALS )

	func calibration_visuals() -> bool:
		var field_start: int = get_inline_field_start( VT_CALIBRATION_VISUALS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if tracker_model is present in the buffer, else false
	func tracker_model_is_present() -> bool:
		return get_field_offset( VT_TRACKER_MODEL )

	func tracker_model() -> VRCTrackerModel:
		var field_start: int = get_inline_field_start( VT_TRACKER_MODEL )
		if not field_start: return 0 as VRCTrackerModel
		var decoded: VRCTrackerModel = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if spine_mode is present in the buffer, else false
	func spine_mode_is_present() -> bool:
		return get_field_offset( VT_SPINE_MODE )

	func spine_mode() -> VRCSpineMode:
		var field_start: int = get_inline_field_start( VT_SPINE_MODE )
		if not field_start: return 0 as VRCSpineMode
		var decoded: VRCSpineMode = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if avatar_measurement_type is present in the buffer, else false
	func avatar_measurement_type_is_present() -> bool:
		return get_field_offset( VT_AVATAR_MEASUREMENT_TYPE )

	func avatar_measurement_type() -> VRCAvatarMeasurementType:
		var field_start: int = get_inline_field_start( VT_AVATAR_MEASUREMENT_TYPE )
		if not field_start: return 0 as VRCAvatarMeasurementType
		var decoded: VRCAvatarMeasurementType = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if shoulder_width_compensation is present in the buffer, else false
	func shoulder_width_compensation_is_present() -> bool:
		return get_field_offset( VT_SHOULDER_WIDTH_COMPENSATION )

	func shoulder_width_compensation() -> bool:
		var field_start: int = get_inline_field_start( VT_SHOULDER_WIDTH_COMPENSATION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for VRCConfigValues
class VRCConfigValuesBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the legacy_mode field to the VRCConfigValues table
	func add_legacy_mode( legacy_mode: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValues.VT_LEGACY_MODE, legacy_mode, 0 )

	## Add the shoulder_tracking_disabled field to the VRCConfigValues table
	func add_shoulder_tracking_disabled( shoulder_tracking_disabled: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValues.VT_SHOULDER_TRACKING_DISABLED, shoulder_tracking_disabled, 0 )

	## Add the user_height field to the VRCConfigValues table
	func add_user_height( user_height: float ) -> void:
		fbb_.add_element_float_default( VRCConfigValues.VT_USER_HEIGHT, user_height, 0.0 )

	## Add the calibration_range field to the VRCConfigValues table
	func add_calibration_range( calibration_range: float ) -> void:
		fbb_.add_element_float_default( VRCConfigValues.VT_CALIBRATION_RANGE, calibration_range, 0.0 )

	## Add the calibration_visuals field to the VRCConfigValues table
	func add_calibration_visuals( calibration_visuals: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValues.VT_CALIBRATION_VISUALS, calibration_visuals, 0 )

	## Add the tracker_model field to the VRCConfigValues table
	func add_tracker_model( tracker_model: VRCTrackerModel ) -> void:
		fbb_.add_element_ubyte( VRCConfigValues.VT_TRACKER_MODEL, tracker_model )

	## Add the spine_mode field to the VRCConfigValues table
	func add_spine_mode( spine_mode: VRCSpineMode ) -> void:
		fbb_.add_element_ubyte( VRCConfigValues.VT_SPINE_MODE, spine_mode )

	## Add the avatar_measurement_type field to the VRCConfigValues table
	func add_avatar_measurement_type( avatar_measurement_type: VRCAvatarMeasurementType ) -> void:
		fbb_.add_element_ubyte( VRCConfigValues.VT_AVATAR_MEASUREMENT_TYPE, avatar_measurement_type )

	## Add the shoulder_width_compensation field to the VRCConfigValues table
	func add_shoulder_width_compensation( shoulder_width_compensation: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigValues.VT_SHOULDER_WIDTH_COMPENSATION, shoulder_width_compensation, 0 )

	## Finish building the VRCConfigValues table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VRCConfigValues table in one go using the provided [param _fbb]
static func create_VRCConfigValues( _fbb: FlatBufferBuilder,
		legacy_mode: bool,
		shoulder_tracking_disabled: bool,
		user_height: float,
		calibration_range: float,
		calibration_visuals: bool,
		tracker_model: VRCTrackerModel,
		spine_mode: VRCSpineMode,
		avatar_measurement_type: VRCAvatarMeasurementType,
		shoulder_width_compensation: bool ) -> int :
	var builder: VRCConfigValuesBuilder = VRCConfigValuesBuilder.new( _fbb );
	builder.add_calibration_range( calibration_range );
	builder.add_user_height( user_height );
	builder.add_shoulder_width_compensation( shoulder_width_compensation );
	builder.add_avatar_measurement_type( avatar_measurement_type );
	builder.add_spine_mode( spine_mode );
	builder.add_tracker_model( tracker_model );
	builder.add_calibration_visuals( calibration_visuals );
	builder.add_shoulder_tracking_disabled( shoulder_tracking_disabled );
	builder.add_legacy_mode( legacy_mode );
	return builder.finish();

class VRCConfigRecommendedValues extends FlatBuffer:

	enum {
		VT_LEGACY_MODE = 4,
		VT_SHOULDER_TRACKING_DISABLED = 6,
		VT_USER_HEIGHT = 8,
		VT_CALIBRATION_RANGE = 10,
		VT_CALIBRATION_VISUALS = 12,
		VT_TRACKER_MODEL = 14,
		VT_SPINE_MODE = 16,
		VT_AVATAR_MEASUREMENT_TYPE = 18,
		VT_SHOULDER_WIDTH_COMPENSATION = 20
	}

	## Initialize the VRCConfigValues with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VRCConfigValues data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_LEGACY_MODE, 1)
			and verify_field_u8(verifier, VT_SHOULDER_TRACKING_DISABLED, 1)
			and verify_field_float(verifier, VT_USER_HEIGHT, 4)
			and verify_field_float(verifier, VT_CALIBRATION_RANGE, 4)
			and verify_field_u8(verifier, VT_CALIBRATION_VISUALS, 1)
			and verify_field_u8(verifier, VT_TRACKER_MODEL, 1)
			and verify_offset(verifier, VT_SPINE_MODE)
			and verify_vector_u8(verifier, VT_SPINE_MODE)
			and verify_field_u8(verifier, VT_AVATAR_MEASUREMENT_TYPE, 1)
			and verify_field_u8(verifier, VT_SHOULDER_WIDTH_COMPENSATION, 1)
			and verify_end_table(verifier)
		)

	## Return true if legacy_mode is present in the buffer, else false
	func legacy_mode_is_present() -> bool:
		return get_field_offset( VT_LEGACY_MODE )

	func legacy_mode() -> bool:
		var field_start: int = get_inline_field_start( VT_LEGACY_MODE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if shoulder_tracking_disabled is present in the buffer, else false
	func shoulder_tracking_disabled_is_present() -> bool:
		return get_field_offset( VT_SHOULDER_TRACKING_DISABLED )

	func shoulder_tracking_disabled() -> bool:
		var field_start: int = get_inline_field_start( VT_SHOULDER_TRACKING_DISABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if user_height is present in the buffer, else false
	func user_height_is_present() -> bool:
		return get_field_offset( VT_USER_HEIGHT )

	func user_height() -> float:
		var field_start: int = get_inline_field_start( VT_USER_HEIGHT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if calibration_range is present in the buffer, else false
	func calibration_range_is_present() -> bool:
		return get_field_offset( VT_CALIBRATION_RANGE )

	func calibration_range() -> float:
		var field_start: int = get_inline_field_start( VT_CALIBRATION_RANGE )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if calibration_visuals is present in the buffer, else false
	func calibration_visuals_is_present() -> bool:
		return get_field_offset( VT_CALIBRATION_VISUALS )

	func calibration_visuals() -> bool:
		var field_start: int = get_inline_field_start( VT_CALIBRATION_VISUALS )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if tracker_model is present in the buffer, else false
	func tracker_model_is_present() -> bool:
		return get_field_offset( VT_TRACKER_MODEL )

	func tracker_model() -> VRCTrackerModel:
		var field_start: int = get_inline_field_start( VT_TRACKER_MODEL )
		if not field_start: return 0 as VRCTrackerModel
		var decoded: VRCTrackerModel = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if spine_mode is present in the buffer, else false
	func spine_mode_is_present() -> bool:
		return get_field_offset( VT_SPINE_MODE )

	func spine_mode_size() -> int:
		var array_start: int = get_offset_field_start( VT_SPINE_MODE )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	## Access elements of spine_mode by [param index]
	func spine_mode_at( index: int ) -> VRCSpineMode:
		var array_start: int = get_offset_field_start( VT_SPINE_MODE )
		assert(array_start, 'access to invalid vector of enum')
		array_start += 4
		return _fb_bytes[array_start + index]

	## Decode and return all elements of spine_mode as an [PackedByteArray]
	func spine_mode() -> PackedByteArray:
		var array_start: int = get_offset_field_start( VT_SPINE_MODE )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		return _fb_bytes.slice( array_start, array_start + array_size )

	## Return true if avatar_measurement_type is present in the buffer, else false
	func avatar_measurement_type_is_present() -> bool:
		return get_field_offset( VT_AVATAR_MEASUREMENT_TYPE )

	func avatar_measurement_type() -> VRCAvatarMeasurementType:
		var field_start: int = get_inline_field_start( VT_AVATAR_MEASUREMENT_TYPE )
		if not field_start: return 0 as VRCAvatarMeasurementType
		var decoded: VRCAvatarMeasurementType = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if shoulder_width_compensation is present in the buffer, else false
	func shoulder_width_compensation_is_present() -> bool:
		return get_field_offset( VT_SHOULDER_WIDTH_COMPENSATION )

	func shoulder_width_compensation() -> bool:
		var field_start: int = get_inline_field_start( VT_SHOULDER_WIDTH_COMPENSATION )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for VRCConfigRecommendedValues
class VRCConfigRecommendedValuesBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the legacy_mode field to the VRCConfigRecommendedValues table
	func add_legacy_mode( legacy_mode: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigRecommendedValues.VT_LEGACY_MODE, legacy_mode, 0 )

	## Add the shoulder_tracking_disabled field to the VRCConfigRecommendedValues table
	func add_shoulder_tracking_disabled( shoulder_tracking_disabled: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigRecommendedValues.VT_SHOULDER_TRACKING_DISABLED, shoulder_tracking_disabled, 0 )

	## Add the user_height field to the VRCConfigRecommendedValues table
	func add_user_height( user_height: float ) -> void:
		fbb_.add_element_float_default( VRCConfigRecommendedValues.VT_USER_HEIGHT, user_height, 0.0 )

	## Add the calibration_range field to the VRCConfigRecommendedValues table
	func add_calibration_range( calibration_range: float ) -> void:
		fbb_.add_element_float_default( VRCConfigRecommendedValues.VT_CALIBRATION_RANGE, calibration_range, 0.0 )

	## Add the calibration_visuals field to the VRCConfigRecommendedValues table
	func add_calibration_visuals( calibration_visuals: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigRecommendedValues.VT_CALIBRATION_VISUALS, calibration_visuals, 0 )

	## Add the tracker_model field to the VRCConfigRecommendedValues table
	func add_tracker_model( tracker_model: VRCTrackerModel ) -> void:
		fbb_.add_element_ubyte( VRCConfigRecommendedValues.VT_TRACKER_MODEL, tracker_model )

	## Add the spine_mode field to the VRCConfigRecommendedValues table
	func add_spine_mode( spine_mode_offset: int ) -> void:
		fbb_.add_offset( VRCConfigRecommendedValues.VT_SPINE_MODE, spine_mode_offset )

	## Add the avatar_measurement_type field to the VRCConfigRecommendedValues table
	func add_avatar_measurement_type( avatar_measurement_type: VRCAvatarMeasurementType ) -> void:
		fbb_.add_element_ubyte( VRCConfigRecommendedValues.VT_AVATAR_MEASUREMENT_TYPE, avatar_measurement_type )

	## Add the shoulder_width_compensation field to the VRCConfigRecommendedValues table
	func add_shoulder_width_compensation( shoulder_width_compensation: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigRecommendedValues.VT_SHOULDER_WIDTH_COMPENSATION, shoulder_width_compensation, 0 )

	## Finish building the VRCConfigRecommendedValues table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VRCConfigRecommendedValues table in one go using the provided [param _fbb]
static func create_VRCConfigRecommendedValues( _fbb: FlatBufferBuilder,
		legacy_mode: bool,
		shoulder_tracking_disabled: bool,
		user_height: float,
		calibration_range: float,
		calibration_visuals: bool,
		tracker_model: VRCTrackerModel,
		spine_mode: int,
		avatar_measurement_type: VRCAvatarMeasurementType,
		shoulder_width_compensation: bool ) -> int :
	var builder: VRCConfigRecommendedValuesBuilder = VRCConfigRecommendedValuesBuilder.new( _fbb );
	builder.add_spine_mode( spine_mode );
	builder.add_calibration_range( calibration_range );
	builder.add_user_height( user_height );
	builder.add_shoulder_width_compensation( shoulder_width_compensation );
	builder.add_avatar_measurement_type( avatar_measurement_type );
	builder.add_tracker_model( tracker_model );
	builder.add_calibration_visuals( calibration_visuals );
	builder.add_shoulder_tracking_disabled( shoulder_tracking_disabled );
	builder.add_legacy_mode( legacy_mode );
	return builder.finish();

class VRCConfigStateRequest extends FlatBuffer:


	## Initialize the VRCConfigRecommendedValues with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VRCConfigRecommendedValues data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for VRCConfigStateRequest
class VRCConfigStateRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the VRCConfigStateRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VRCConfigStateRequest table in one go using the provided [param _fbb]
static func create_VRCConfigStateRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: VRCConfigStateRequestBuilder = VRCConfigStateRequestBuilder.new( _fbb );
	return builder.finish();

class VRCConfigStateChangeResponse extends FlatBuffer:

	enum {
		VT_IS_SUPPORTED = 4,
		VT_VALIDITY = 6,
		VT_STATE = 8,
		VT_RECOMMENDED = 10,
		VT_MUTED = 12
	}

	## Initialize the VRCConfigStateRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VRCConfigStateRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_IS_SUPPORTED, 1)
			and verify_offset(verifier, VT_VALIDITY)
			and validity().verify(verifier)
			and verify_offset(verifier, VT_STATE)
			and state().verify(verifier)
			and verify_offset(verifier, VT_RECOMMENDED)
			and recommended().verify(verifier)
			and verify_offset(verifier, VT_MUTED)
			and verify_vector_u32(verifier, VT_MUTED)
			and verify_vector_of_variant(verifier, VT_MUTED, TYPE_STRING)
			and verify_end_table(verifier)
		)

	## Return true if is_supported is present in the buffer, else false
	func is_supported_is_present() -> bool:
		return get_field_offset( VT_IS_SUPPORTED )

	func is_supported() -> bool:
		var field_start: int = get_inline_field_start( VT_IS_SUPPORTED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if validity is present in the buffer, else false
	func validity_is_present() -> bool:
		return get_field_offset( VT_VALIDITY )

	func validity() -> SolarXR.VRCConfigValidity:
		var field_start: int = get_offset_field_start( VT_VALIDITY )
		if not field_start: return null
		return SolarXR.VRCConfigValidity.new( _fb_bytes, field_start )

	## Return true if state is present in the buffer, else false
	func state_is_present() -> bool:
		return get_field_offset( VT_STATE )

	func state() -> SolarXR.VRCConfigValues:
		var field_start: int = get_offset_field_start( VT_STATE )
		if not field_start: return null
		return SolarXR.VRCConfigValues.new( _fb_bytes, field_start )

	## Return true if recommended is present in the buffer, else false
	func recommended_is_present() -> bool:
		return get_field_offset( VT_RECOMMENDED )

	func recommended() -> SolarXR.VRCConfigRecommendedValues:
		var field_start: int = get_offset_field_start( VT_RECOMMENDED )
		if not field_start: return null
		return SolarXR.VRCConfigRecommendedValues.new( _fb_bytes, field_start )

	## Return true if muted is present in the buffer, else false
	func muted_is_present() -> bool:
		return get_field_offset( VT_MUTED )

	func muted_size() -> int:
		var array_start: int = get_offset_field_start( VT_MUTED )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func muted_at( index: int ) -> String:
		var array_start: int = get_offset_field_start( VT_MUTED )
		if not array_start: return ''
		array_start += 4
		var string_start: int = array_start + index * 4
		string_start += _fb_bytes.decode_u32( string_start )
		return decode_variant( string_start, TYPE_STRING )

	func muted() -> PackedStringArray:
		var array_start: int = get_offset_field_start( VT_MUTED )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: PackedStringArray
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var idx: int = array_start + i * 4
			var element_start: int = idx + _fb_bytes.decode_u32( idx )
			array[i] = decode_variant( element_start, TYPE_STRING )
		return array


## Builder class for VRCConfigStateChangeResponse
class VRCConfigStateChangeResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the is_supported field to the VRCConfigStateChangeResponse table
	func add_is_supported( is_supported: bool ) -> void:
		fbb_.add_element_bool_default( VRCConfigStateChangeResponse.VT_IS_SUPPORTED, is_supported, 0 )

	## Add the validity field to the VRCConfigStateChangeResponse table
	func add_validity( validity_offset: int ) -> void:
		fbb_.add_offset( VRCConfigStateChangeResponse.VT_VALIDITY, validity_offset )

	## Add the state field to the VRCConfigStateChangeResponse table
	func add_state( state_offset: int ) -> void:
		fbb_.add_offset( VRCConfigStateChangeResponse.VT_STATE, state_offset )

	## Add the recommended field to the VRCConfigStateChangeResponse table
	func add_recommended( recommended_offset: int ) -> void:
		fbb_.add_offset( VRCConfigStateChangeResponse.VT_RECOMMENDED, recommended_offset )

	## Add the muted field to the VRCConfigStateChangeResponse table
	func add_muted( muted_offset: int ) -> void:
		fbb_.add_offset( VRCConfigStateChangeResponse.VT_MUTED, muted_offset )

	## Finish building the VRCConfigStateChangeResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VRCConfigStateChangeResponse table in one go using the provided [param _fbb]
static func create_VRCConfigStateChangeResponse( _fbb: FlatBufferBuilder,
		is_supported: bool,
		validity: int,
		state: int,
		recommended: int,
		muted: int ) -> int :
	var builder: VRCConfigStateChangeResponseBuilder = VRCConfigStateChangeResponseBuilder.new( _fbb );
	builder.add_muted( muted );
	builder.add_recommended( recommended );
	builder.add_state( state );
	builder.add_validity( validity );
	builder.add_is_supported( is_supported );
	return builder.finish();

class VRCConfigSettingToggleMute extends FlatBuffer:

	enum {
		VT_KEY = 4
	}

	## Initialize the VRCConfigStateChangeResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VRCConfigStateChangeResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_KEY)
			and verify_string( verifier, VT_KEY )
			and verify_end_table(verifier)
		)

	## Return true if key is present in the buffer, else false
	func key_is_present() -> bool:
		return get_field_offset( VT_KEY )

	func key() -> String:
		var field_start: int = get_offset_field_start( VT_KEY )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for VRCConfigSettingToggleMute
class VRCConfigSettingToggleMuteBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the key field to the VRCConfigSettingToggleMute table
	func add_key( key_offset: int ) -> void:
		fbb_.add_offset( VRCConfigSettingToggleMute.VT_KEY, key_offset )

	## Finish building the VRCConfigSettingToggleMute table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a VRCConfigSettingToggleMute table in one go using the provided [param _fbb]
static func create_VRCConfigSettingToggleMute( _fbb: FlatBufferBuilder,
		key: int ) -> int :
	var builder: VRCConfigSettingToggleMuteBuilder = VRCConfigSettingToggleMuteBuilder.new( _fbb );
	builder.add_key( key );
	return builder.finish();

class TrackingChecklistTrackerReset extends FlatBuffer:

	enum {
		VT_TRACKERS_ID = 4
	}

	## Initialize the VRCConfigSettingToggleMute with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the VRCConfigSettingToggleMute data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKERS_ID)
			and verify_vector_u32(verifier, VT_TRACKERS_ID)
			and trackers_id_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if trackers_id is present in the buffer, else false
	func trackers_id_is_present() -> bool:
		return get_field_offset( VT_TRACKERS_ID )

	func trackers_id_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.TrackerId.new()
		for i in trackers_id_size():
			if not trackers_id_at(i, tmp).verify(verifier):
				return false
		return true

	func trackers_id_size() -> int:
		var array_start: int = get_offset_field_start( VT_TRACKERS_ID )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func trackers_id_at( idx: int, into: TrackerId = null ) -> TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKERS_ID )
		assert(field_start, 'Field "trackers_id" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.TrackerId.new( _fb_bytes, element_pos + element_offset )

	func trackers_id() -> Array:
		var array_start: int = get_offset_field_start( VT_TRACKERS_ID )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.TrackerId.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for TrackingChecklistTrackerReset
class TrackingChecklistTrackerResetBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the trackers_id field to the TrackingChecklistTrackerReset table
	func add_trackers_id( trackers_id_offset: int ) -> void:
		fbb_.add_offset( TrackingChecklistTrackerReset.VT_TRACKERS_ID, trackers_id_offset )

	## Finish building the TrackingChecklistTrackerReset table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingChecklistTrackerReset table in one go using the provided [param _fbb]
static func create_TrackingChecklistTrackerReset( _fbb: FlatBufferBuilder,
		trackers_id: int ) -> int :
	var builder: TrackingChecklistTrackerResetBuilder = TrackingChecklistTrackerResetBuilder.new( _fbb );
	builder.add_trackers_id( trackers_id );
	return builder.finish();

class TrackingChecklistTrackerError extends FlatBuffer:

	enum {
		VT_TRACKERS_ID = 4
	}

	## Initialize the TrackingChecklistTrackerReset with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingChecklistTrackerReset data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKERS_ID)
			and verify_vector_u32(verifier, VT_TRACKERS_ID)
			and trackers_id_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if trackers_id is present in the buffer, else false
	func trackers_id_is_present() -> bool:
		return get_field_offset( VT_TRACKERS_ID )

	func trackers_id_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.TrackerId.new()
		for i in trackers_id_size():
			if not trackers_id_at(i, tmp).verify(verifier):
				return false
		return true

	func trackers_id_size() -> int:
		var array_start: int = get_offset_field_start( VT_TRACKERS_ID )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func trackers_id_at( idx: int, into: TrackerId = null ) -> TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKERS_ID )
		assert(field_start, 'Field "trackers_id" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.TrackerId.new( _fb_bytes, element_pos + element_offset )

	func trackers_id() -> Array:
		var array_start: int = get_offset_field_start( VT_TRACKERS_ID )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.TrackerId.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for TrackingChecklistTrackerError
class TrackingChecklistTrackerErrorBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the trackers_id field to the TrackingChecklistTrackerError table
	func add_trackers_id( trackers_id_offset: int ) -> void:
		fbb_.add_offset( TrackingChecklistTrackerError.VT_TRACKERS_ID, trackers_id_offset )

	## Finish building the TrackingChecklistTrackerError table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingChecklistTrackerError table in one go using the provided [param _fbb]
static func create_TrackingChecklistTrackerError( _fbb: FlatBufferBuilder,
		trackers_id: int ) -> int :
	var builder: TrackingChecklistTrackerErrorBuilder = TrackingChecklistTrackerErrorBuilder.new( _fbb );
	builder.add_trackers_id( trackers_id );
	return builder.finish();

class TrackingChecklistNeedCalibration extends FlatBuffer:

	enum {
		VT_TRACKERS_ID = 4
	}

	## Initialize the TrackingChecklistTrackerError with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingChecklistTrackerError data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKERS_ID)
			and verify_vector_u32(verifier, VT_TRACKERS_ID)
			and trackers_id_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if trackers_id is present in the buffer, else false
	func trackers_id_is_present() -> bool:
		return get_field_offset( VT_TRACKERS_ID )

	func trackers_id_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.TrackerId.new()
		for i in trackers_id_size():
			if not trackers_id_at(i, tmp).verify(verifier):
				return false
		return true

	func trackers_id_size() -> int:
		var array_start: int = get_offset_field_start( VT_TRACKERS_ID )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func trackers_id_at( idx: int, into: TrackerId = null ) -> TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKERS_ID )
		assert(field_start, 'Field "trackers_id" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.TrackerId.new( _fb_bytes, element_pos + element_offset )

	func trackers_id() -> Array:
		var array_start: int = get_offset_field_start( VT_TRACKERS_ID )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.TrackerId.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for TrackingChecklistNeedCalibration
class TrackingChecklistNeedCalibrationBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the trackers_id field to the TrackingChecklistNeedCalibration table
	func add_trackers_id( trackers_id_offset: int ) -> void:
		fbb_.add_offset( TrackingChecklistNeedCalibration.VT_TRACKERS_ID, trackers_id_offset )

	## Finish building the TrackingChecklistNeedCalibration table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingChecklistNeedCalibration table in one go using the provided [param _fbb]
static func create_TrackingChecklistNeedCalibration( _fbb: FlatBufferBuilder,
		trackers_id: int ) -> int :
	var builder: TrackingChecklistNeedCalibrationBuilder = TrackingChecklistNeedCalibrationBuilder.new( _fbb );
	builder.add_trackers_id( trackers_id );
	return builder.finish();

class TrackingChecklistSteamVRDisconnected extends FlatBuffer:

	enum {
		VT_BRIDGE_SETTINGS_NAME = 4,
		VT_DRIVER_INSTALLED = 6,
		VT_DRIVER_BLOCKED_BY_SAFE_MODE = 8,
		VT_DRIVER_ENABLED = 10
	}

	## Initialize the TrackingChecklistNeedCalibration with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingChecklistNeedCalibration data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_BRIDGE_SETTINGS_NAME)
			and verify_string( verifier, VT_BRIDGE_SETTINGS_NAME )
			and verify_field_u8(verifier, VT_DRIVER_INSTALLED, 1)
			and verify_field_u8(verifier, VT_DRIVER_BLOCKED_BY_SAFE_MODE, 1)
			and verify_field_u8(verifier, VT_DRIVER_ENABLED, 1)
			and verify_end_table(verifier)
		)

	## Return true if bridge_settings_name is present in the buffer, else false
	func bridge_settings_name_is_present() -> bool:
		return get_field_offset( VT_BRIDGE_SETTINGS_NAME )

	func bridge_settings_name() -> String:
		var field_start: int = get_offset_field_start( VT_BRIDGE_SETTINGS_NAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if driver_installed is present in the buffer, else false
	func driver_installed_is_present() -> bool:
		return get_field_offset( VT_DRIVER_INSTALLED )

	func driver_installed() -> bool:
		var field_start: int = get_inline_field_start( VT_DRIVER_INSTALLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if driver_blocked_by_safe_mode is present in the buffer, else false
	func driver_blocked_by_safe_mode_is_present() -> bool:
		return get_field_offset( VT_DRIVER_BLOCKED_BY_SAFE_MODE )

	func driver_blocked_by_safe_mode() -> bool:
		var field_start: int = get_inline_field_start( VT_DRIVER_BLOCKED_BY_SAFE_MODE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if driver_enabled is present in the buffer, else false
	func driver_enabled_is_present() -> bool:
		return get_field_offset( VT_DRIVER_ENABLED )

	func driver_enabled() -> bool:
		var field_start: int = get_inline_field_start( VT_DRIVER_ENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for TrackingChecklistSteamVRDisconnected
class TrackingChecklistSteamVRDisconnectedBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the bridge_settings_name field to the TrackingChecklistSteamVRDisconnected table
	func add_bridge_settings_name( bridge_settings_name_offset: int ) -> void:
		fbb_.add_offset( TrackingChecklistSteamVRDisconnected.VT_BRIDGE_SETTINGS_NAME, bridge_settings_name_offset )

	## Add the driver_installed field to the TrackingChecklistSteamVRDisconnected table
	func add_driver_installed( driver_installed: bool ) -> void:
		fbb_.add_element_bool_default( TrackingChecklistSteamVRDisconnected.VT_DRIVER_INSTALLED, driver_installed, 0 )

	## Add the driver_blocked_by_safe_mode field to the TrackingChecklistSteamVRDisconnected table
	func add_driver_blocked_by_safe_mode( driver_blocked_by_safe_mode: bool ) -> void:
		fbb_.add_element_bool_default( TrackingChecklistSteamVRDisconnected.VT_DRIVER_BLOCKED_BY_SAFE_MODE, driver_blocked_by_safe_mode, 0 )

	## Add the driver_enabled field to the TrackingChecklistSteamVRDisconnected table
	func add_driver_enabled( driver_enabled: bool ) -> void:
		fbb_.add_element_bool_default( TrackingChecklistSteamVRDisconnected.VT_DRIVER_ENABLED, driver_enabled, 0 )

	## Finish building the TrackingChecklistSteamVRDisconnected table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingChecklistSteamVRDisconnected table in one go using the provided [param _fbb]
static func create_TrackingChecklistSteamVRDisconnected( _fbb: FlatBufferBuilder,
		bridge_settings_name: int,
		driver_installed: bool,
		driver_blocked_by_safe_mode: bool,
		driver_enabled: bool ) -> int :
	var builder: TrackingChecklistSteamVRDisconnectedBuilder = TrackingChecklistSteamVRDisconnectedBuilder.new( _fbb );
	builder.add_bridge_settings_name( bridge_settings_name );
	builder.add_driver_enabled( driver_enabled );
	builder.add_driver_blocked_by_safe_mode( driver_blocked_by_safe_mode );
	builder.add_driver_installed( driver_installed );
	return builder.finish();

class EnableSteamVRDriverRequest extends FlatBuffer:


	## Initialize the TrackingChecklistSteamVRDisconnected with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingChecklistSteamVRDisconnected data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for EnableSteamVRDriverRequest
class EnableSteamVRDriverRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the EnableSteamVRDriverRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a EnableSteamVRDriverRequest table in one go using the provided [param _fbb]
static func create_EnableSteamVRDriverRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: EnableSteamVRDriverRequestBuilder = EnableSteamVRDriverRequestBuilder.new( _fbb );
	return builder.finish();

class TrackingChecklistUnassignedHMD extends FlatBuffer:

	enum {
		VT_TRACKER_ID = 4
	}

	## Initialize the EnableSteamVRDriverRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the EnableSteamVRDriverRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_TRACKER_ID)
			and tracker_id().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if tracker_id is present in the buffer, else false
	func tracker_id_is_present() -> bool:
		return get_field_offset( VT_TRACKER_ID )

	func tracker_id() -> SolarXR.TrackerId:
		var field_start: int = get_offset_field_start( VT_TRACKER_ID )
		if not field_start: return null
		return SolarXR.TrackerId.new( _fb_bytes, field_start )


## Builder class for TrackingChecklistUnassignedHMD
class TrackingChecklistUnassignedHMDBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the tracker_id field to the TrackingChecklistUnassignedHMD table
	func add_tracker_id( tracker_id_offset: int ) -> void:
		fbb_.add_offset( TrackingChecklistUnassignedHMD.VT_TRACKER_ID, tracker_id_offset )

	## Finish building the TrackingChecklistUnassignedHMD table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingChecklistUnassignedHMD table in one go using the provided [param _fbb]
static func create_TrackingChecklistUnassignedHMD( _fbb: FlatBufferBuilder,
		tracker_id: int ) -> int :
	var builder: TrackingChecklistUnassignedHMDBuilder = TrackingChecklistUnassignedHMDBuilder.new( _fbb );
	builder.add_tracker_id( tracker_id );
	return builder.finish();

class TrackingChecklistPublicNetworks extends FlatBuffer:

	enum {
		VT_ADAPTERS = 4
	}

	## Initialize the TrackingChecklistUnassignedHMD with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingChecklistUnassignedHMD data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_ADAPTERS)
			and verify_vector_u32(verifier, VT_ADAPTERS)
			and verify_vector_of_variant(verifier, VT_ADAPTERS, TYPE_STRING)
			and verify_end_table(verifier)
		)

	## Return true if adapters is present in the buffer, else false
	func adapters_is_present() -> bool:
		return get_field_offset( VT_ADAPTERS )

	func adapters_size() -> int:
		var array_start: int = get_offset_field_start( VT_ADAPTERS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func adapters_at( index: int ) -> String:
		var array_start: int = get_offset_field_start( VT_ADAPTERS )
		if not array_start: return ''
		array_start += 4
		var string_start: int = array_start + index * 4
		string_start += _fb_bytes.decode_u32( string_start )
		return decode_variant( string_start, TYPE_STRING )

	func adapters() -> PackedStringArray:
		var array_start: int = get_offset_field_start( VT_ADAPTERS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: PackedStringArray
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var idx: int = array_start + i * 4
			var element_start: int = idx + _fb_bytes.decode_u32( idx )
			array[i] = decode_variant( element_start, TYPE_STRING )
		return array


## Builder class for TrackingChecklistPublicNetworks
class TrackingChecklistPublicNetworksBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the adapters field to the TrackingChecklistPublicNetworks table
	func add_adapters( adapters_offset: int ) -> void:
		fbb_.add_offset( TrackingChecklistPublicNetworks.VT_ADAPTERS, adapters_offset )

	## Finish building the TrackingChecklistPublicNetworks table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingChecklistPublicNetworks table in one go using the provided [param _fbb]
static func create_TrackingChecklistPublicNetworks( _fbb: FlatBufferBuilder,
		adapters: int ) -> int :
	var builder: TrackingChecklistPublicNetworksBuilder = TrackingChecklistPublicNetworksBuilder.new( _fbb );
	builder.add_adapters( adapters );
	return builder.finish();

class TrackingChecklistStep extends FlatBuffer:

	enum {
		VT_ID = 4,
		VT_VALID = 6,
		VT_ENABLED = 8,
		VT_VISIBILITY = 10,
		VT_OPTIONAL = 12,
		VT_IGNORABLE = 14,
		VT_EXTRA_DATA_TYPE = 16,
		VT_EXTRA_DATA = 18
	}

	## Initialize the TrackingChecklistPublicNetworks with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingChecklistPublicNetworks data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_ID, 1)
			and verify_field_u8(verifier, VT_VALID, 1)
			and verify_field_u8(verifier, VT_ENABLED, 1)
			and verify_field_u8(verifier, VT_VISIBILITY, 1)
			and verify_field_u8(verifier, VT_OPTIONAL, 1)
			and verify_field_u8(verifier, VT_IGNORABLE, 1)
			and verify_field_u8(verifier, VT_EXTRA_DATA_TYPE, 1)
			and verify_offset(verifier, VT_EXTRA_DATA)
			and SolarXR.tracking_checklist_extra_data_verify(verifier, extra_data(), extra_data_type())
			and verify_end_table(verifier)
		)

	## Return true if id is present in the buffer, else false
	func id_is_present() -> bool:
		return get_field_offset( VT_ID )

	func id() -> TrackingChecklistStepId:
		var field_start: int = get_inline_field_start( VT_ID )
		if not field_start: return 0 as TrackingChecklistStepId
		var decoded: TrackingChecklistStepId = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if valid is present in the buffer, else false
	func valid_is_present() -> bool:
		return get_field_offset( VT_VALID )

	func valid() -> bool:
		var field_start: int = get_inline_field_start( VT_VALID )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if enabled is present in the buffer, else false
	func enabled_is_present() -> bool:
		return get_field_offset( VT_ENABLED )

	func enabled() -> bool:
		var field_start: int = get_inline_field_start( VT_ENABLED )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if visibility is present in the buffer, else false
	func visibility_is_present() -> bool:
		return get_field_offset( VT_VISIBILITY )

	func visibility() -> TrackingChecklistStepVisibility:
		var field_start: int = get_inline_field_start( VT_VISIBILITY )
		if not field_start: return 0 as TrackingChecklistStepVisibility
		var decoded: TrackingChecklistStepVisibility = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if optional is present in the buffer, else false
	func optional_is_present() -> bool:
		return get_field_offset( VT_OPTIONAL )

	func optional() -> bool:
		var field_start: int = get_inline_field_start( VT_OPTIONAL )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if ignorable is present in the buffer, else false
	func ignorable_is_present() -> bool:
		return get_field_offset( VT_IGNORABLE )

	func ignorable() -> bool:
		var field_start: int = get_inline_field_start( VT_IGNORABLE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )

	## Return true if extra_data is present in the buffer, else false
	func extra_data_is_present() -> bool:
		return get_field_offset( VT_EXTRA_DATA )

	## Get the union type of the extra_data_type field
	func extra_data_type() -> TrackingChecklistExtraData:
		var field_start: int = get_inline_field_start( VT_EXTRA_DATA_TYPE )
		if not field_start: return 0 as TrackingChecklistExtraData
		var decoded: TrackingChecklistExtraData = _fb_bytes.decode_u8( field_start )
		return decoded

	func extra_data() -> Variant:
		var field_start: int = get_offset_field_start( VT_EXTRA_DATA )
		if not field_start: return null
		match( extra_data_type() ):
			SolarXR.TrackingChecklistExtraData.TRACKING_CHECKLIST_TRACKER_RESET:
				return SolarXR.TrackingChecklistTrackerReset.new( _fb_bytes, field_start )
			SolarXR.TrackingChecklistExtraData.TRACKING_CHECKLIST_TRACKER_ERROR:
				return SolarXR.TrackingChecklistTrackerError.new( _fb_bytes, field_start )
			SolarXR.TrackingChecklistExtraData.TRACKING_CHECKLIST_STEAM_VRDISCONNECTED:
				return SolarXR.TrackingChecklistSteamVRDisconnected.new( _fb_bytes, field_start )
			SolarXR.TrackingChecklistExtraData.TRACKING_CHECKLIST_UNASSIGNED_HMD:
				return SolarXR.TrackingChecklistUnassignedHMD.new( _fb_bytes, field_start )
			SolarXR.TrackingChecklistExtraData.TRACKING_CHECKLIST_NEED_CALIBRATION:
				return SolarXR.TrackingChecklistNeedCalibration.new( _fb_bytes, field_start )
			SolarXR.TrackingChecklistExtraData.TRACKING_CHECKLIST_PUBLIC_NETWORKS:
				return SolarXR.TrackingChecklistPublicNetworks.new( _fb_bytes, field_start )
		return null


## Builder class for TrackingChecklistStep
class TrackingChecklistStepBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the id field to the TrackingChecklistStep table
	func add_id( id: TrackingChecklistStepId ) -> void:
		fbb_.add_element_ubyte( TrackingChecklistStep.VT_ID, id )

	## Add the valid field to the TrackingChecklistStep table
	func add_valid( valid: bool ) -> void:
		fbb_.add_element_bool_default( TrackingChecklistStep.VT_VALID, valid, 0 )

	## Add the enabled field to the TrackingChecklistStep table
	func add_enabled( enabled: bool ) -> void:
		fbb_.add_element_bool_default( TrackingChecklistStep.VT_ENABLED, enabled, 0 )

	## Add the visibility field to the TrackingChecklistStep table
	func add_visibility( visibility: TrackingChecklistStepVisibility ) -> void:
		fbb_.add_element_ubyte( TrackingChecklistStep.VT_VISIBILITY, visibility )

	## Add the optional field to the TrackingChecklistStep table
	func add_optional( optional: bool ) -> void:
		fbb_.add_element_bool_default( TrackingChecklistStep.VT_OPTIONAL, optional, 0 )

	## Add the ignorable field to the TrackingChecklistStep table
	func add_ignorable( ignorable: bool ) -> void:
		fbb_.add_element_bool_default( TrackingChecklistStep.VT_IGNORABLE, ignorable, 0 )

	## Add the extra_data_type field to the TrackingChecklistStep table
	func add_extra_data_type( extra_data_type: TrackingChecklistExtraData ) -> void:
		fbb_.add_element_ubyte( TrackingChecklistStep.VT_EXTRA_DATA_TYPE, extra_data_type )

	## Add the extra_data field to the TrackingChecklistStep table
	func add_extra_data( extra_data_offset: int ) -> void:
		fbb_.add_offset( TrackingChecklistStep.VT_EXTRA_DATA, extra_data_offset )

	## Finish building the TrackingChecklistStep table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingChecklistStep table in one go using the provided [param _fbb]
static func create_TrackingChecklistStep( _fbb: FlatBufferBuilder,
		id: TrackingChecklistStepId,
		valid: bool,
		enabled: bool,
		visibility: TrackingChecklistStepVisibility,
		optional: bool,
		ignorable: bool,
		extra_data_type: TrackingChecklistExtraData,
		extra_data: int ) -> int :
	var builder: TrackingChecklistStepBuilder = TrackingChecklistStepBuilder.new( _fbb );
	builder.add_extra_data( extra_data );
	builder.add_extra_data_type( extra_data_type );
	builder.add_ignorable( ignorable );
	builder.add_optional( optional );
	builder.add_visibility( visibility );
	builder.add_enabled( enabled );
	builder.add_valid( valid );
	builder.add_id( id );
	return builder.finish();

class TrackingChecklistRequest extends FlatBuffer:


	## Initialize the TrackingChecklistStep with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingChecklistStep data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for TrackingChecklistRequest
class TrackingChecklistRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the TrackingChecklistRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingChecklistRequest table in one go using the provided [param _fbb]
static func create_TrackingChecklistRequest( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: TrackingChecklistRequestBuilder = TrackingChecklistRequestBuilder.new( _fbb );
	return builder.finish();

class TrackingChecklistResponse extends FlatBuffer:

	enum {
		VT_STEPS = 4,
		VT_IGNORED_STEPS = 6
	}

	## Initialize the TrackingChecklistRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingChecklistRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_STEPS)
			and verify_vector_u32(verifier, VT_STEPS)
			and steps_verify(verifier)
			and verify_offset(verifier, VT_IGNORED_STEPS)
			and verify_vector_u8(verifier, VT_IGNORED_STEPS)
			and verify_end_table(verifier)
		)

	## Return true if steps is present in the buffer, else false
	func steps_is_present() -> bool:
		return get_field_offset( VT_STEPS )

	func steps_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.TrackingChecklistStep.new()
		for i in steps_size():
			if not steps_at(i, tmp).verify(verifier):
				return false
		return true

	func steps_size() -> int:
		var array_start: int = get_offset_field_start( VT_STEPS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func steps_at( idx: int, into: TrackingChecklistStep = null ) -> TrackingChecklistStep:
		var field_start: int = get_offset_field_start( VT_STEPS )
		assert(field_start, 'Field "steps" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.TrackingChecklistStep.new( _fb_bytes, element_pos + element_offset )

	func steps() -> Array:
		var array_start: int = get_offset_field_start( VT_STEPS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.TrackingChecklistStep.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array

	## Return true if ignored_steps is present in the buffer, else false
	func ignored_steps_is_present() -> bool:
		return get_field_offset( VT_IGNORED_STEPS )

	func ignored_steps_size() -> int:
		var array_start: int = get_offset_field_start( VT_IGNORED_STEPS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	## Access elements of ignored_steps by [param index]
	func ignored_steps_at( index: int ) -> TrackingChecklistStepId:
		var array_start: int = get_offset_field_start( VT_IGNORED_STEPS )
		assert(array_start, 'access to invalid vector of enum')
		array_start += 4
		return _fb_bytes[array_start + index]

	## Decode and return all elements of ignored_steps as an [PackedByteArray]
	func ignored_steps() -> PackedByteArray:
		var array_start: int = get_offset_field_start( VT_IGNORED_STEPS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		return _fb_bytes.slice( array_start, array_start + array_size )


## Builder class for TrackingChecklistResponse
class TrackingChecklistResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the steps field to the TrackingChecklistResponse table
	func add_steps( steps_offset: int ) -> void:
		fbb_.add_offset( TrackingChecklistResponse.VT_STEPS, steps_offset )

	## Add the ignored_steps field to the TrackingChecklistResponse table
	func add_ignored_steps( ignored_steps_offset: int ) -> void:
		fbb_.add_offset( TrackingChecklistResponse.VT_IGNORED_STEPS, ignored_steps_offset )

	## Finish building the TrackingChecklistResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TrackingChecklistResponse table in one go using the provided [param _fbb]
static func create_TrackingChecklistResponse( _fbb: FlatBufferBuilder,
		steps: int,
		ignored_steps: int ) -> int :
	var builder: TrackingChecklistResponseBuilder = TrackingChecklistResponseBuilder.new( _fbb );
	builder.add_ignored_steps( ignored_steps );
	builder.add_steps( steps );
	return builder.finish();

class IgnoreTrackingChecklistStepRequest extends FlatBuffer:

	enum {
		VT_STEP_ID = 4,
		VT_IGNORE = 6
	}

	## Initialize the TrackingChecklistResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TrackingChecklistResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_STEP_ID, 1)
			and verify_field_u8(verifier, VT_IGNORE, 1)
			and verify_end_table(verifier)
		)

	## Return true if step_id is present in the buffer, else false
	func step_id_is_present() -> bool:
		return get_field_offset( VT_STEP_ID )

	func step_id() -> TrackingChecklistStepId:
		var field_start: int = get_inline_field_start( VT_STEP_ID )
		if not field_start: return 0 as TrackingChecklistStepId
		var decoded: TrackingChecklistStepId = _fb_bytes.decode_u8( field_start )
		return decoded

	## Return true if ignore is present in the buffer, else false
	func ignore_is_present() -> bool:
		return get_field_offset( VT_IGNORE )

	func ignore() -> bool:
		var field_start: int = get_inline_field_start( VT_IGNORE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for IgnoreTrackingChecklistStepRequest
class IgnoreTrackingChecklistStepRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the step_id field to the IgnoreTrackingChecklistStepRequest table
	func add_step_id( step_id: TrackingChecklistStepId ) -> void:
		fbb_.add_element_ubyte( IgnoreTrackingChecklistStepRequest.VT_STEP_ID, step_id )

	## Add the ignore field to the IgnoreTrackingChecklistStepRequest table
	func add_ignore( ignore: bool ) -> void:
		fbb_.add_element_bool_default( IgnoreTrackingChecklistStepRequest.VT_IGNORE, ignore, 0 )

	## Finish building the IgnoreTrackingChecklistStepRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a IgnoreTrackingChecklistStepRequest table in one go using the provided [param _fbb]
static func create_IgnoreTrackingChecklistStepRequest( _fbb: FlatBufferBuilder,
		step_id: TrackingChecklistStepId,
		ignore: bool ) -> int :
	var builder: IgnoreTrackingChecklistStepRequestBuilder = IgnoreTrackingChecklistStepRequestBuilder.new( _fbb );
	builder.add_ignore( ignore );
	builder.add_step_id( step_id );
	return builder.finish();

class EnableStayAlignedRequest extends FlatBuffer:

	enum {
		VT_ENABLE = 4
	}

	## Initialize the IgnoreTrackingChecklistStepRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the IgnoreTrackingChecklistStepRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_ENABLE, 1)
			and verify_end_table(verifier)
		)

	## Return true if enable is present in the buffer, else false
	func enable_is_present() -> bool:
		return get_field_offset( VT_ENABLE )

	func enable() -> bool:
		var field_start: int = get_inline_field_start( VT_ENABLE )
		if not field_start: return 0
		return _fb_bytes.decode_u8( field_start )


## Builder class for EnableStayAlignedRequest
class EnableStayAlignedRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the enable field to the EnableStayAlignedRequest table
	func add_enable( enable: bool ) -> void:
		fbb_.add_element_bool_default( EnableStayAlignedRequest.VT_ENABLE, enable, 0 )

	## Finish building the EnableStayAlignedRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a EnableStayAlignedRequest table in one go using the provided [param _fbb]
static func create_EnableStayAlignedRequest( _fbb: FlatBufferBuilder,
		enable: bool ) -> int :
	var builder: EnableStayAlignedRequestBuilder = EnableStayAlignedRequestBuilder.new( _fbb );
	builder.add_enable( enable );
	return builder.finish();

class DetectStayAlignedRelaxedPoseRequest extends FlatBuffer:

	enum {
		VT_POSE = 4
	}

	## Initialize the EnableStayAlignedRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the EnableStayAlignedRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_POSE, 1)
			and verify_end_table(verifier)
		)

	## Return true if pose is present in the buffer, else false
	func pose_is_present() -> bool:
		return get_field_offset( VT_POSE )

	func pose() -> StayAlignedRelaxedPose:
		var field_start: int = get_inline_field_start( VT_POSE )
		if not field_start: return 0 as StayAlignedRelaxedPose
		var decoded: StayAlignedRelaxedPose = _fb_bytes.decode_u8( field_start )
		return decoded


## Builder class for DetectStayAlignedRelaxedPoseRequest
class DetectStayAlignedRelaxedPoseRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the pose field to the DetectStayAlignedRelaxedPoseRequest table
	func add_pose( pose: StayAlignedRelaxedPose ) -> void:
		fbb_.add_element_ubyte( DetectStayAlignedRelaxedPoseRequest.VT_POSE, pose )

	## Finish building the DetectStayAlignedRelaxedPoseRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a DetectStayAlignedRelaxedPoseRequest table in one go using the provided [param _fbb]
static func create_DetectStayAlignedRelaxedPoseRequest( _fbb: FlatBufferBuilder,
		pose: StayAlignedRelaxedPose ) -> int :
	var builder: DetectStayAlignedRelaxedPoseRequestBuilder = DetectStayAlignedRelaxedPoseRequestBuilder.new( _fbb );
	builder.add_pose( pose );
	return builder.finish();

class ResetStayAlignedRelaxedPoseRequest extends FlatBuffer:

	enum {
		VT_POSE = 4
	}

	## Initialize the DetectStayAlignedRelaxedPoseRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the DetectStayAlignedRelaxedPoseRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_POSE, 1)
			and verify_end_table(verifier)
		)

	## Return true if pose is present in the buffer, else false
	func pose_is_present() -> bool:
		return get_field_offset( VT_POSE )

	func pose() -> StayAlignedRelaxedPose:
		var field_start: int = get_inline_field_start( VT_POSE )
		if not field_start: return 0 as StayAlignedRelaxedPose
		var decoded: StayAlignedRelaxedPose = _fb_bytes.decode_u8( field_start )
		return decoded


## Builder class for ResetStayAlignedRelaxedPoseRequest
class ResetStayAlignedRelaxedPoseRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the pose field to the ResetStayAlignedRelaxedPoseRequest table
	func add_pose( pose: StayAlignedRelaxedPose ) -> void:
		fbb_.add_element_ubyte( ResetStayAlignedRelaxedPoseRequest.VT_POSE, pose )

	## Finish building the ResetStayAlignedRelaxedPoseRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a ResetStayAlignedRelaxedPoseRequest table in one go using the provided [param _fbb]
static func create_ResetStayAlignedRelaxedPoseRequest( _fbb: FlatBufferBuilder,
		pose: StayAlignedRelaxedPose ) -> int :
	var builder: ResetStayAlignedRelaxedPoseRequestBuilder = ResetStayAlignedRelaxedPoseRequestBuilder.new( _fbb );
	builder.add_pose( pose );
	return builder.finish();

class StartUserHeightCalibration extends FlatBuffer:


	## Initialize the ResetStayAlignedRelaxedPoseRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the ResetStayAlignedRelaxedPoseRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for StartUserHeightCalibration
class StartUserHeightCalibrationBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the StartUserHeightCalibration table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a StartUserHeightCalibration table in one go using the provided [param _fbb]
static func create_StartUserHeightCalibration( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: StartUserHeightCalibrationBuilder = StartUserHeightCalibrationBuilder.new( _fbb );
	return builder.finish();

class CancelUserHeightCalibration extends FlatBuffer:


	## Initialize the StartUserHeightCalibration with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the StartUserHeightCalibration data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_end_table(verifier)
		)


## Builder class for CancelUserHeightCalibration
class CancelUserHeightCalibrationBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Finish building the CancelUserHeightCalibration table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a CancelUserHeightCalibration table in one go using the provided [param _fbb]
static func create_CancelUserHeightCalibration( _fbb: FlatBufferBuilder,
		 ) -> int :
	var builder: CancelUserHeightCalibrationBuilder = CancelUserHeightCalibrationBuilder.new( _fbb );
	return builder.finish();

class UserHeightRecordingStatusResponse extends FlatBuffer:

	enum {
		VT_HMDHEIGHT = 4,
		VT_STATUS = 6
	}

	## Initialize the CancelUserHeightCalibration with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the CancelUserHeightCalibration data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_float(verifier, VT_HMDHEIGHT, 4)
			and verify_field_u8(verifier, VT_STATUS, 1)
			and verify_end_table(verifier)
		)

	## Return true if hmdHeight is present in the buffer, else false
	func hmdHeight_is_present() -> bool:
		return get_field_offset( VT_HMDHEIGHT )

	func hmdHeight() -> float:
		var field_start: int = get_inline_field_start( VT_HMDHEIGHT )
		if not field_start: return 0.0
		return _fb_bytes.decode_float( field_start )

	## Return true if status is present in the buffer, else false
	func status_is_present() -> bool:
		return get_field_offset( VT_STATUS )

	func status() -> UserHeightCalibrationStatus:
		var field_start: int = get_inline_field_start( VT_STATUS )
		if not field_start: return 0 as UserHeightCalibrationStatus
		var decoded: UserHeightCalibrationStatus = _fb_bytes.decode_u8( field_start )
		return decoded


## Builder class for UserHeightRecordingStatusResponse
class UserHeightRecordingStatusResponseBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the hmdHeight field to the UserHeightRecordingStatusResponse table
	func add_hmdHeight( hmdHeight: float ) -> void:
		fbb_.add_element_float_default( UserHeightRecordingStatusResponse.VT_HMDHEIGHT, hmdHeight, 0.0 )

	## Add the status field to the UserHeightRecordingStatusResponse table
	func add_status( status: UserHeightCalibrationStatus ) -> void:
		fbb_.add_element_ubyte( UserHeightRecordingStatusResponse.VT_STATUS, status )

	## Finish building the UserHeightRecordingStatusResponse table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a UserHeightRecordingStatusResponse table in one go using the provided [param _fbb]
static func create_UserHeightRecordingStatusResponse( _fbb: FlatBufferBuilder,
		hmdHeight: float,
		status: UserHeightCalibrationStatus ) -> int :
	var builder: UserHeightRecordingStatusResponseBuilder = UserHeightRecordingStatusResponseBuilder.new( _fbb );
	builder.add_hmdHeight( hmdHeight );
	builder.add_status( status );
	return builder.finish();

class TopicId extends FlatBuffer:

	enum {
		VT_ORGANIZATION = 4,
		VT_APP_NAME = 6,
		VT_TOPIC = 8
	}

	## Initialize the UserHeightRecordingStatusResponse with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the UserHeightRecordingStatusResponse data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_ORGANIZATION)
			and verify_string( verifier, VT_ORGANIZATION )
			and verify_offset(verifier, VT_APP_NAME)
			and verify_string( verifier, VT_APP_NAME )
			and verify_offset(verifier, VT_TOPIC)
			and verify_string( verifier, VT_TOPIC )
			and verify_end_table(verifier)
		)

	## Return true if organization is present in the buffer, else false
	func organization_is_present() -> bool:
		return get_field_offset( VT_ORGANIZATION )

	func organization() -> String:
		var field_start: int = get_offset_field_start( VT_ORGANIZATION )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if app_name is present in the buffer, else false
	func app_name_is_present() -> bool:
		return get_field_offset( VT_APP_NAME )

	func app_name() -> String:
		var field_start: int = get_offset_field_start( VT_APP_NAME )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )

	## Return true if topic is present in the buffer, else false
	func topic_is_present() -> bool:
		return get_field_offset( VT_TOPIC )

	func topic() -> String:
		var field_start: int = get_offset_field_start( VT_TOPIC )
		if not field_start: return ''
		return decode_variant( field_start, TYPE_STRING )


## Builder class for TopicId
class TopicIdBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the organization field to the TopicId table
	func add_organization( organization_offset: int ) -> void:
		fbb_.add_offset( TopicId.VT_ORGANIZATION, organization_offset )

	## Add the app_name field to the TopicId table
	func add_app_name( app_name_offset: int ) -> void:
		fbb_.add_offset( TopicId.VT_APP_NAME, app_name_offset )

	## Add the topic field to the TopicId table
	func add_topic( topic_offset: int ) -> void:
		fbb_.add_offset( TopicId.VT_TOPIC, topic_offset )

	## Finish building the TopicId table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TopicId table in one go using the provided [param _fbb]
static func create_TopicId( _fbb: FlatBufferBuilder,
		organization: int,
		app_name: int,
		topic: int ) -> int :
	var builder: TopicIdBuilder = TopicIdBuilder.new( _fbb );
	builder.add_topic( topic );
	builder.add_app_name( app_name );
	builder.add_organization( organization );
	return builder.finish();

class TopicHandle extends FlatBuffer:

	enum {
		VT_ID = 4
	}

	## Initialize the TopicId with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TopicId data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u16(verifier, VT_ID, 2)
			and verify_end_table(verifier)
		)

	## Return true if id is present in the buffer, else false
	func id_is_present() -> bool:
		return get_field_offset( VT_ID )

	func id() -> int:
		var field_start: int = get_inline_field_start( VT_ID )
		if not field_start: return 0
		return _fb_bytes.decode_u16( field_start )


## Builder class for TopicHandle
class TopicHandleBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the id field to the TopicHandle table
	func add_id( id: int ) -> void:
		fbb_.add_element_ushort_default( TopicHandle.VT_ID, id, 0 )

	## Finish building the TopicHandle table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TopicHandle table in one go using the provided [param _fbb]
static func create_TopicHandle( _fbb: FlatBufferBuilder,
		id: int ) -> int :
	var builder: TopicHandleBuilder = TopicHandleBuilder.new( _fbb );
	builder.add_id( id );
	return builder.finish();

class TopicMapping extends FlatBuffer:

	enum {
		VT_ID = 4,
		VT_HANDLE = 6
	}

	## Initialize the TopicHandle with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TopicHandle data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_ID)
			and id().verify(verifier)
			and verify_offset(verifier, VT_HANDLE)
			and handle().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if id is present in the buffer, else false
	func id_is_present() -> bool:
		return get_field_offset( VT_ID )

	func id() -> SolarXR.TopicId:
		var field_start: int = get_offset_field_start( VT_ID )
		if not field_start: return null
		return SolarXR.TopicId.new( _fb_bytes, field_start )

	## Return true if handle is present in the buffer, else false
	func handle_is_present() -> bool:
		return get_field_offset( VT_HANDLE )

	func handle() -> SolarXR.TopicHandle:
		var field_start: int = get_offset_field_start( VT_HANDLE )
		if not field_start: return null
		return SolarXR.TopicHandle.new( _fb_bytes, field_start )


## Builder class for TopicMapping
class TopicMappingBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the id field to the TopicMapping table
	func add_id( id_offset: int ) -> void:
		fbb_.add_offset( TopicMapping.VT_ID, id_offset )

	## Add the handle field to the TopicMapping table
	func add_handle( handle_offset: int ) -> void:
		fbb_.add_offset( TopicMapping.VT_HANDLE, handle_offset )

	## Finish building the TopicMapping table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TopicMapping table in one go using the provided [param _fbb]
static func create_TopicMapping( _fbb: FlatBufferBuilder,
		id: int,
		handle: int ) -> int :
	var builder: TopicMappingBuilder = TopicMappingBuilder.new( _fbb );
	builder.add_handle( handle );
	builder.add_id( id );
	return builder.finish();

class TopicHandleRequest extends FlatBuffer:

	enum {
		VT_ID = 4
	}

	## Initialize the TopicMapping with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TopicMapping data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_ID)
			and id().verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if id is present in the buffer, else false
	func id_is_present() -> bool:
		return get_field_offset( VT_ID )

	func id() -> SolarXR.TopicId:
		var field_start: int = get_offset_field_start( VT_ID )
		if not field_start: return null
		return SolarXR.TopicId.new( _fb_bytes, field_start )


## Builder class for TopicHandleRequest
class TopicHandleRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the id field to the TopicHandleRequest table
	func add_id( id_offset: int ) -> void:
		fbb_.add_offset( TopicHandleRequest.VT_ID, id_offset )

	## Finish building the TopicHandleRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a TopicHandleRequest table in one go using the provided [param _fbb]
static func create_TopicHandleRequest( _fbb: FlatBufferBuilder,
		id: int ) -> int :
	var builder: TopicHandleRequestBuilder = TopicHandleRequestBuilder.new( _fbb );
	builder.add_id( id );
	return builder.finish();

class SubscriptionRequest extends FlatBuffer:

	enum {
		VT_TOPIC_TYPE = 4,
		VT_TOPIC = 6
	}

	## Initialize the TopicHandleRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the TopicHandleRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_TOPIC_TYPE, 1)
			and verify_offset(verifier, VT_TOPIC)
			and SolarXR.topic_verify(verifier, topic(), topic_type())
			and verify_end_table(verifier)
		)

	## Return true if topic is present in the buffer, else false
	func topic_is_present() -> bool:
		return get_field_offset( VT_TOPIC )

	## Get the union type of the topic_type field
	func topic_type() -> Topic:
		var field_start: int = get_inline_field_start( VT_TOPIC_TYPE )
		if not field_start: return 0 as Topic
		var decoded: Topic = _fb_bytes.decode_u8( field_start )
		return decoded

	func topic() -> Variant:
		var field_start: int = get_offset_field_start( VT_TOPIC )
		if not field_start: return null
		match( topic_type() ):
			SolarXR.Topic.TOPIC_HANDLE:
				return SolarXR.TopicHandle.new( _fb_bytes, field_start )
			SolarXR.Topic.TOPIC_ID:
				return SolarXR.TopicId.new( _fb_bytes, field_start )
		return null


## Builder class for SubscriptionRequest
class SubscriptionRequestBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the topic_type field to the SubscriptionRequest table
	func add_topic_type( topic_type: Topic ) -> void:
		fbb_.add_element_ubyte( SubscriptionRequest.VT_TOPIC_TYPE, topic_type )

	## Add the topic field to the SubscriptionRequest table
	func add_topic( topic_offset: int ) -> void:
		fbb_.add_offset( SubscriptionRequest.VT_TOPIC, topic_offset )

	## Finish building the SubscriptionRequest table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a SubscriptionRequest table in one go using the provided [param _fbb]
static func create_SubscriptionRequest( _fbb: FlatBufferBuilder,
		topic_type: Topic,
		topic: int ) -> int :
	var builder: SubscriptionRequestBuilder = SubscriptionRequestBuilder.new( _fbb );
	builder.add_topic( topic );
	builder.add_topic_type( topic_type );
	return builder.finish();

class PubSubHeader extends FlatBuffer:

	enum {
		VT_U_TYPE = 4,
		VT_U = 6
	}

	## Initialize the SubscriptionRequest with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the SubscriptionRequest data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_U_TYPE, 1)
			and verify_offset(verifier, VT_U)
			and SolarXR.pub_sub_union_verify(verifier, u(), u_type())
			and verify_end_table(verifier)
		)

	## Return true if u is present in the buffer, else false
	func u_is_present() -> bool:
		return get_field_offset( VT_U )

	## Get the union type of the u_type field
	func u_type() -> PubSubUnion:
		var field_start: int = get_inline_field_start( VT_U_TYPE )
		if not field_start: return 0 as PubSubUnion
		var decoded: PubSubUnion = _fb_bytes.decode_u8( field_start )
		return decoded

	func u() -> Variant:
		var field_start: int = get_offset_field_start( VT_U )
		if not field_start: return null
		match( u_type() ):
			SolarXR.PubSubUnion.MESSAGE:
				return SolarXR.Message.new( _fb_bytes, field_start )
			SolarXR.PubSubUnion.SUBSCRIPTION_REQUEST:
				return SolarXR.SubscriptionRequest.new( _fb_bytes, field_start )
			SolarXR.PubSubUnion.TOPIC_HANDLE_REQUEST:
				return SolarXR.TopicHandleRequest.new( _fb_bytes, field_start )
			SolarXR.PubSubUnion.TOPIC_MAPPING:
				return SolarXR.TopicMapping.new( _fb_bytes, field_start )
		return null


## Builder class for PubSubHeader
class PubSubHeaderBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the u_type field to the PubSubHeader table
	func add_u_type( u_type: PubSubUnion ) -> void:
		fbb_.add_element_ubyte( PubSubHeader.VT_U_TYPE, u_type )

	## Add the u field to the PubSubHeader table
	func add_u( u_offset: int ) -> void:
		fbb_.add_offset( PubSubHeader.VT_U, u_offset )

	## Finish building the PubSubHeader table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a PubSubHeader table in one go using the provided [param _fbb]
static func create_PubSubHeader( _fbb: FlatBufferBuilder,
		u_type: PubSubUnion,
		u: int ) -> int :
	var builder: PubSubHeaderBuilder = PubSubHeaderBuilder.new( _fbb );
	builder.add_u( u );
	builder.add_u_type( u_type );
	return builder.finish();

class Message extends FlatBuffer:

	enum {
		VT_TOPIC_TYPE = 4,
		VT_TOPIC = 6,
		VT_PAYLOAD_TYPE = 8,
		VT_PAYLOAD = 10
	}

	## Initialize the PubSubHeader with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the PubSubHeader data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_field_u8(verifier, VT_TOPIC_TYPE, 1)
			and verify_offset(verifier, VT_TOPIC)
			and SolarXR.topic_verify(verifier, topic(), topic_type())
			and verify_field_u8(verifier, VT_PAYLOAD_TYPE, 1)
			and verify_offset(verifier, VT_PAYLOAD)
			and SolarXR.payload_verify(verifier, payload(), payload_type())
			and verify_end_table(verifier)
		)

	## Return true if topic is present in the buffer, else false
	func topic_is_present() -> bool:
		return get_field_offset( VT_TOPIC )

	## Get the union type of the topic_type field
	func topic_type() -> Topic:
		var field_start: int = get_inline_field_start( VT_TOPIC_TYPE )
		if not field_start: return 0 as Topic
		var decoded: Topic = _fb_bytes.decode_u8( field_start )
		return decoded

	func topic() -> Variant:
		var field_start: int = get_offset_field_start( VT_TOPIC )
		if not field_start: return null
		match( topic_type() ):
			SolarXR.Topic.TOPIC_HANDLE:
				return SolarXR.TopicHandle.new( _fb_bytes, field_start )
			SolarXR.Topic.TOPIC_ID:
				return SolarXR.TopicId.new( _fb_bytes, field_start )
		return null

	## Return true if payload is present in the buffer, else false
	func payload_is_present() -> bool:
		return get_field_offset( VT_PAYLOAD )

	## Get the union type of the payload_type field
	func payload_type() -> Payload:
		var field_start: int = get_inline_field_start( VT_PAYLOAD_TYPE )
		if not field_start: return 0 as Payload
		var decoded: Payload = _fb_bytes.decode_u8( field_start )
		return decoded

	func payload() -> Variant:
		var field_start: int = get_offset_field_start( VT_PAYLOAD )
		if not field_start: return null
		match( payload_type() ):
			SolarXR.Payload.STRING_TABLE:
				return SolarXR.StringTable.new( _fb_bytes, field_start )
			SolarXR.Payload.BYTES:
				return SolarXR.Bytes.new( _fb_bytes, field_start )
			SolarXR.Payload.KEY_VALUES:
				return SolarXR.KeyValues.new( _fb_bytes, field_start )
		return null


## Builder class for Message
class MessageBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the topic_type field to the Message table
	func add_topic_type( topic_type: Topic ) -> void:
		fbb_.add_element_ubyte( Message.VT_TOPIC_TYPE, topic_type )

	## Add the topic field to the Message table
	func add_topic( topic_offset: int ) -> void:
		fbb_.add_offset( Message.VT_TOPIC, topic_offset )

	## Add the payload_type field to the Message table
	func add_payload_type( payload_type: Payload ) -> void:
		fbb_.add_element_ubyte( Message.VT_PAYLOAD_TYPE, payload_type )

	## Add the payload field to the Message table
	func add_payload( payload_offset: int ) -> void:
		fbb_.add_offset( Message.VT_PAYLOAD, payload_offset )

	## Finish building the Message table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a Message table in one go using the provided [param _fbb]
static func create_Message( _fbb: FlatBufferBuilder,
		topic_type: Topic,
		topic: int,
		payload_type: Payload,
		payload: int ) -> int :
	var builder: MessageBuilder = MessageBuilder.new( _fbb );
	builder.add_payload( payload );
	builder.add_topic( topic );
	builder.add_payload_type( payload_type );
	builder.add_topic_type( topic_type );
	return builder.finish();

class KeyValues extends FlatBuffer:

	enum {
		VT_KEYS = 4,
		VT_VALUES = 6
	}

	## Initialize the Message with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the Message data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_KEYS)
			and verify_vector_u32(verifier, VT_KEYS)
			and verify_vector_of_variant(verifier, VT_KEYS, TYPE_STRING)
			and verify_offset(verifier, VT_VALUES)
			and verify_vector_u32(verifier, VT_VALUES)
			and verify_vector_of_variant(verifier, VT_VALUES, TYPE_STRING)
			and verify_end_table(verifier)
		)

	## Return true if keys is present in the buffer, else false
	func keys_is_present() -> bool:
		return get_field_offset( VT_KEYS )

	func keys_size() -> int:
		var array_start: int = get_offset_field_start( VT_KEYS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func keys_at( index: int ) -> String:
		var array_start: int = get_offset_field_start( VT_KEYS )
		if not array_start: return ''
		array_start += 4
		var string_start: int = array_start + index * 4
		string_start += _fb_bytes.decode_u32( string_start )
		return decode_variant( string_start, TYPE_STRING )

	func keys() -> PackedStringArray:
		var array_start: int = get_offset_field_start( VT_KEYS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: PackedStringArray
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var idx: int = array_start + i * 4
			var element_start: int = idx + _fb_bytes.decode_u32( idx )
			array[i] = decode_variant( element_start, TYPE_STRING )
		return array

	## Return true if values is present in the buffer, else false
	func values_is_present() -> bool:
		return get_field_offset( VT_VALUES )

	func values_size() -> int:
		var array_start: int = get_offset_field_start( VT_VALUES )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func values_at( index: int ) -> String:
		var array_start: int = get_offset_field_start( VT_VALUES )
		if not array_start: return ''
		array_start += 4
		var string_start: int = array_start + index * 4
		string_start += _fb_bytes.decode_u32( string_start )
		return decode_variant( string_start, TYPE_STRING )

	func values() -> PackedStringArray:
		var array_start: int = get_offset_field_start( VT_VALUES )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: PackedStringArray
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var idx: int = array_start + i * 4
			var element_start: int = idx + _fb_bytes.decode_u32( idx )
			array[i] = decode_variant( element_start, TYPE_STRING )
		return array


## Builder class for KeyValues
class KeyValuesBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the keys field to the KeyValues table
	func add_keys( keys_offset: int ) -> void:
		fbb_.add_offset( KeyValues.VT_KEYS, keys_offset )

	## Add the values field to the KeyValues table
	func add_values( values_offset: int ) -> void:
		fbb_.add_offset( KeyValues.VT_VALUES, values_offset )

	## Finish building the KeyValues table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a KeyValues table in one go using the provided [param _fbb]
static func create_KeyValues( _fbb: FlatBufferBuilder,
		keys: int,
		values: int ) -> int :
	var builder: KeyValuesBuilder = KeyValuesBuilder.new( _fbb );
	builder.add_values( values );
	builder.add_keys( keys );
	return builder.finish();

class MessageBundle extends FlatBuffer:

	enum {
		VT_DATA_FEED_MSGS = 4,
		VT_RPC_MSGS = 6,
		VT_PUB_SUB_MSGS = 8
	}

	## Initialize the KeyValues with the provided [param packed_bytes] at the given [param offset]
	func _init( packed_bytes: PackedByteArray = [], offset: int = 0) -> void:
		assign_buffer( packed_bytes, offset )

	## Verify the integrity of the KeyValues data
	func verify(verifier:FlatBufferVerifier) -> bool:
		verifier.set_buffer(_fb_bytes)
		return (
			verify_table_start(verifier)
			and verify_offset(verifier, VT_DATA_FEED_MSGS)
			and verify_vector_u32(verifier, VT_DATA_FEED_MSGS)
			and data_feed_msgs_verify(verifier)
			and verify_offset(verifier, VT_RPC_MSGS)
			and verify_vector_u32(verifier, VT_RPC_MSGS)
			and rpc_msgs_verify(verifier)
			and verify_offset(verifier, VT_PUB_SUB_MSGS)
			and verify_vector_u32(verifier, VT_PUB_SUB_MSGS)
			and pub_sub_msgs_verify(verifier)
			and verify_end_table(verifier)
		)

	## Return true if data_feed_msgs is present in the buffer, else false
	func data_feed_msgs_is_present() -> bool:
		return get_field_offset( VT_DATA_FEED_MSGS )

	func data_feed_msgs_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.DataFeedMessageHeader.new()
		for i in data_feed_msgs_size():
			if not data_feed_msgs_at(i, tmp).verify(verifier):
				return false
		return true

	func data_feed_msgs_size() -> int:
		var array_start: int = get_offset_field_start( VT_DATA_FEED_MSGS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func data_feed_msgs_at( idx: int, into: DataFeedMessageHeader = null ) -> DataFeedMessageHeader:
		var field_start: int = get_offset_field_start( VT_DATA_FEED_MSGS )
		assert(field_start, 'Field "data_feed_msgs" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.DataFeedMessageHeader.new( _fb_bytes, element_pos + element_offset )

	func data_feed_msgs() -> Array:
		var array_start: int = get_offset_field_start( VT_DATA_FEED_MSGS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.DataFeedMessageHeader.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array

	## Return true if rpc_msgs is present in the buffer, else false
	func rpc_msgs_is_present() -> bool:
		return get_field_offset( VT_RPC_MSGS )

	func rpc_msgs_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.RpcMessageHeader.new()
		for i in rpc_msgs_size():
			if not rpc_msgs_at(i, tmp).verify(verifier):
				return false
		return true

	func rpc_msgs_size() -> int:
		var array_start: int = get_offset_field_start( VT_RPC_MSGS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func rpc_msgs_at( idx: int, into: RpcMessageHeader = null ) -> RpcMessageHeader:
		var field_start: int = get_offset_field_start( VT_RPC_MSGS )
		assert(field_start, 'Field "rpc_msgs" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.RpcMessageHeader.new( _fb_bytes, element_pos + element_offset )

	func rpc_msgs() -> Array:
		var array_start: int = get_offset_field_start( VT_RPC_MSGS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.RpcMessageHeader.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array

	## Return true if pub_sub_msgs is present in the buffer, else false
	func pub_sub_msgs_is_present() -> bool:
		return get_field_offset( VT_PUB_SUB_MSGS )

	func pub_sub_msgs_verify(verifier:FlatBufferVerifier) -> bool:
		var tmp := SolarXR.PubSubHeader.new()
		for i in pub_sub_msgs_size():
			if not pub_sub_msgs_at(i, tmp).verify(verifier):
				return false
		return true

	func pub_sub_msgs_size() -> int:
		var array_start: int = get_offset_field_start( VT_PUB_SUB_MSGS )
		if not array_start: return 0
		return _fb_bytes.decode_u32( array_start )

	func pub_sub_msgs_at( idx: int, into: PubSubHeader = null ) -> PubSubHeader:
		var field_start: int = get_offset_field_start( VT_PUB_SUB_MSGS )
		assert(field_start, 'Field "pub_sub_msgs" is not present in buffer' )

		# The field is a vector of table, so the inline data is a vector of
		# offsets to the element location.

		var array_size: int = _fb_bytes.decode_u32( field_start )
		assert( idx < array_size, 'index is out of bounds')

		var array_start: int = field_start + 4
		var element_pos: int = array_start + idx * 4
		var element_offset: int = _fb_bytes.decode_u32(element_pos)
		if into:
			into.assign_buffer(_fb_bytes, element_pos + element_offset)
			return into
		return SolarXR.PubSubHeader.new( _fb_bytes, element_pos + element_offset )

	func pub_sub_msgs() -> Array:
		var array_start: int = get_offset_field_start( VT_PUB_SUB_MSGS )
		if not array_start: return []
		var array_size: int = _fb_bytes.decode_u32( array_start )
		array_start += 4
		var array: Array
		if array.resize( array_size ) != OK: return []
		for i: int in array_size:
			var p: int = array_start + i * 4
			array[i] = SolarXR.PubSubHeader.new( _fb_bytes, p + _fb_bytes.decode_u32( p ) )
		return array


## Builder class for MessageBundle
class MessageBundleBuilder extends RefCounted:
	var fbb_: FlatBufferBuilder
	var start_: int

	## Initialize the builder with the provided [param _fbb]
	func _init( _fbb: FlatBufferBuilder ) -> void:
		fbb_ = _fbb
		start_ = _fbb.start_table()

	## Add the data_feed_msgs field to the MessageBundle table
	func add_data_feed_msgs( data_feed_msgs_offset: int ) -> void:
		fbb_.add_offset( MessageBundle.VT_DATA_FEED_MSGS, data_feed_msgs_offset )

	## Add the rpc_msgs field to the MessageBundle table
	func add_rpc_msgs( rpc_msgs_offset: int ) -> void:
		fbb_.add_offset( MessageBundle.VT_RPC_MSGS, rpc_msgs_offset )

	## Add the pub_sub_msgs field to the MessageBundle table
	func add_pub_sub_msgs( pub_sub_msgs_offset: int ) -> void:
		fbb_.add_offset( MessageBundle.VT_PUB_SUB_MSGS, pub_sub_msgs_offset )

	## Finish building the MessageBundle table and return the offset
	func finish() -> int:
		var end: int = fbb_.end_table( start_ )
		var o: int = end
		return o;

## Create a MessageBundle table in one go using the provided [param _fbb]
static func create_MessageBundle( _fbb: FlatBufferBuilder,
		data_feed_msgs: int,
		rpc_msgs: int,
		pub_sub_msgs: int ) -> int :
	var builder: MessageBundleBuilder = MessageBundleBuilder.new( _fbb );
	builder.add_pub_sub_msgs( pub_sub_msgs );
	builder.add_rpc_msgs( rpc_msgs );
	builder.add_data_feed_msgs( data_feed_msgs );
	return builder.finish();
