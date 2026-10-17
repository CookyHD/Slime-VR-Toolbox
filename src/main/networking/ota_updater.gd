extends Node

const OTA_PORT:int = 8266
const TCP_SERVER_PORT:int = 38266

const TIMEOUT:int = 5000
const PASSWORD:String = "SlimeVR-OTA"

var Server:TCPServer = TCPServer.new()
var Connections:Array[Connection] = []

var FileMD5:String = ""
var FileSize:int = 0
var FileBuffer:PackedByteArray = PackedByteArray()

var isFileLoaded:bool = false

func update() -> void:
	if Server.is_connection_available():
		var peer:StreamPeerTCP = Server.take_connection()
		for connection:Connection in Connections:
			if connection.get_udp().get_packet_ip() == peer.get_connected_host():
				connection.set_tcp(peer)
	for connection:Connection in Connections:
		connection.update()

func start(...ips) -> void:
	if !isFileLoaded:
		push_error("OTAUpdater: No File Loaded...")
		return
	if Server.listen(TCP_SERVER_PORT) != OK:
		push_error("OTAUpdater: Couldn't Start Server...")
		return
	for ip:String in ips:
		Connections.append(Connection.new(ip))

func finish() -> void:
	Server.stop()
	Connections.clear()
	clear_file()

func set_file(path:String) -> void:
	
	var file = FileAccess.open(path, FileAccess.READ)
	if file.get_error() != OK:
		push_error("OTAUpdater: Couldn't Open/Load File...")
		return
	
	FileBuffer = file.get_buffer(file.get_length())
	file.close()
	
	FileSize = FileBuffer.size()
	FileMD5 = md5_hex_hash(FileBuffer)
	
	isFileLoaded = true

func clear_file() -> void:
	FileMD5 = ""
	FileSize = 0
	FileBuffer = PackedByteArray()
	isFileLoaded = false

func buffer_packet() -> PackedByteArray:
	return FileBuffer

func handshake_packet() -> PackedByteArray:
	return ascii_to_buffer("0 " + str(TCP_SERVER_PORT) + " " + str(FileSize) + " " + FileMD5 + "\n")

func auth_packet(nonce:String) -> PackedByteArray:
	var cnonce:String = Crypto.new().generate_random_bytes(16).hex_encode()
	var response:String = md5_hex_hash(md5_hex_hash(PASSWORD)+":"+nonce+":"+cnonce)
	return ascii_to_buffer("200 "+cnonce+" "+response+"\n")

func md5_hex_hash(data:Variant) -> String:
	var ctx:HashingContext = HashingContext.new()
	ctx.start(HashingContext.HASH_MD5)
	if typeof(data) == TYPE_STRING: ctx.update(data.to_utf8_buffer())
	elif typeof(data) == TYPE_PACKED_BYTE_ARRAY: ctx.update(data)
	return ctx.finish().hex_encode()

func ascii_to_buffer(ascii:String) -> PackedByteArray:
	return ascii.to_ascii_buffer()

func buffer_to_ascii(buffer:PackedByteArray) -> String:
	return buffer.get_string_from_ascii()

class Connection:
	extends Object
	
	var ota := OTAUpdater
	
	enum {
		CONNETING,
		AUTH,
		UPLOAD,
		DONE,
		FAIL
	}
	
	var udp:PacketPeerUDP = PacketPeerUDP.new()
	var tcp:StreamPeerTCP
	
	var timestemp:int = 0;
	var state:int = CONNETING
	
	func terminate() -> void:
		if !Utils.is_null(tcp): tcp.disconnect_from_host()
		udp.close()
	
	func get_udp() -> PacketPeerUDP:
		return udp
	
	func set_tcp(peer:StreamPeerTCP) -> void:
		set("tcp", peer)
		if tcp.put_partial_data(ota.buffer_packet()).get(0) != OK:
			set_state(FAIL)
		timestemp = Utils.millis()
		set_state(UPLOAD)
	
	func set_state(value:int) -> void:
		set("state", value)
	
	func _init(ip:String) -> void:
		if udp.connect_to_host(ip, OTA_PORT) != OK:
			set_state(FAIL)
		udp.put_packet(ota.handshake_packet())
		timestemp = Utils.millis()
	
	func update() -> void:
		match state:
			FAIL, DONE:
				return
		if Utils.millis() - timestemp > TIMEOUT:
			set_state(FAIL)
			terminate()
		match state:
			CONNETING:
				while udp.get_available_packet_count() > 0:
					timestemp = Utils.millis()
					var message:PackedStringArray = ota.buffer_to_ascii(udp.get_packet()).replace("\n","").split(" ")
					if message.has("AUTH"):
						udp.put_packet(ota.auth_packet(message[1]))
						set_state(AUTH)
					if message.has("OK"):
						set_state(AUTH)
			UPLOAD:
				var buffer:PackedByteArray = PackedByteArray()
				var bytes:int = tcp.get_available_bytes()
				if bytes > 0:
					timestemp = Utils.millis()
					buffer.append_array(tcp.get_data(bytes).get(1))
				if  ota.buffer_to_ascii(buffer).contains("OK"):
					set_state(DONE)
					terminate()
