extends Object
class_name VirtualTracker

var ip_address
var mac_address

var peer:PacketPeerUDP = PacketPeerUDP.new()

func send_Discovery() -> void:
	pass
	
	
			#uint8_t mac[6];
			#WiFi.macAddress(mac);
#
			#MUST_TRANSFER_BOOL(sendInt(BOARD));
			#// This is kept for backwards compatibility,
			#// but the latest SlimeVR server will not initialize trackers
			#// with firmware build > 8 until it recieves a sensor info packet
			#MUST_TRANSFER_BOOL(sendInt(static_cast<int>(sensorManager.getSensorType(0)))
			#);
			#MUST_TRANSFER_BOOL(sendInt(HARDWARE_MCU));
			#// Backwards compatibility, unused IMU data
			#MUST_TRANSFER_BOOL(sendInt(0));
			#MUST_TRANSFER_BOOL(sendInt(0));
			#MUST_TRANSFER_BOOL(sendInt(0));
			#MUST_TRANSFER_BOOL(sendInt(PROTOCOL_VERSION));
			#MUST_TRANSFER_BOOL(sendShortString(FIRMWARE_VERSION));
			#// MAC address string
			#MUST_TRANSFER_BOOL(sendBytes(mac, 6));
			#// Tracker type to hint the server if it's a glove or normal tracker or
			#// something else
			#MUST_TRANSFER_BOOL(sendByte(static_cast<uint8_t>(TRACKER_TYPE)));
			#static_assert(std::string_view{VENDOR_NAME}.size() <= 255);
			#MUST_TRANSFER_BOOL(sendShortString(VENDOR_NAME));
			#static_assert(std::string_view{VENDOR_URL}.size() <= 255);
			#MUST_TRANSFER_BOOL(sendShortString(VENDOR_URL));
			#static_assert(std::string_view{PRODUCT_NAME}.size() <= 255);
			#MUST_TRANSFER_BOOL(sendShortString(PRODUCT_NAME));
			#static_assert(std::string_view{UPDATE_ADDRESS}.size() <= 255);
			#MUST_TRANSFER_BOOL(sendShortString(UPDATE_ADDRESS));
			#static_assert(std::string_view{UPDATE_NAME}.size() <= 255);
			#MUST_TRANSFER_BOOL(sendShortString(UPDATE_NAME));
