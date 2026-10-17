extends Object
class_name PacketUDP

var buffer:PackedByteArray = []
var values:Array[Variant] = []

var offset:int = 0
var is_reader:bool = false
var is_flag:bool = false

enum {
	BYTE8,
	BYTE16,
	INT,
	FLOAT,
	SHORT_STRING,
	TYPE
}

func _init(data:PackedByteArray = [], ...args) -> void:
	if data.is_empty(): return
	buffer = data
	is_reader = true
	is_flag = true
	for arg:int in args:
		match arg:
			0:
				readByte8()
			1:
				readByte16()
			2:
				readInt()
			3:
				readFloat()
			4:
				readShortString()
			5:
				readType()
	is_flag = false

func get_buffer() -> PackedByteArray:
	return buffer

func get_values() -> Array[Variant]:
	return values

func clear_buffer() -> void:
	if is_reader: return
	buffer = []
	offset = 0

func addByte8(byte:int) -> PacketUDP:
	if is_reader: return reader_warning()
	buffer.append(byte)
	offset += 1
	return self

func addByte16(byte:int) -> PacketUDP:
	if is_reader: return reader_warning()
	buffer.append_array([0,byte])
	offset += 2
	return self

func addInt(number:int) -> PacketUDP:
	if is_reader: return reader_warning()
	var bytes:PackedByteArray = [0,0,0,0]
	bytes.encode_s32(0,number)
	bytes.reverse()
	buffer.append_array(bytes)
	offset += 4
	return self

func addFloat(number:float) -> PacketUDP:
	if is_reader: return reader_warning()
	var bytes:PackedByteArray = [0,0,0,0]
	bytes.encode_float(0,number)
	bytes.reverse()
	buffer.append_array(bytes)
	offset += 4
	return self

func addShortString(string:String) -> PacketUDP:
	if is_reader: return reader_warning()
	var size:int = string.length()
	buffer.append(size)
	buffer.append_array(string.to_utf8_buffer())
	offset += size + 1
	return self

func addType(type:int) -> PacketUDP:
	if is_reader: return reader_warning()
	buffer.append_array([0,0,0,type,0,0,0,0,0,0,0,0])
	offset += 12
	return self

func readByte8() -> void:
	if is_flag == false: flag_warning()
	values.append(buffer.get(offset))
	offset += 1

func readByte16() -> void:
	if is_flag == false: flag_warning()
	values.append(buffer.get(offset))
	offset += 2

func readInt() -> void:
	if is_flag == false: flag_warning()
	var bytes:PackedByteArray = buffer.slice(offset,offset+4)
	bytes.reverse()
	values.append(bytes.decode_s32(0))
	offset += 4

func readFloat() -> void:
	if is_flag == false: flag_warning()
	var bytes:PackedByteArray = buffer.slice(offset,offset+4)
	bytes.reverse()
	values.append(bytes.decode_float(0))
	offset += 4

func readShortString() -> void:
	if is_flag == false: flag_warning()
	var size:int = buffer.get(offset)
	var bytes:PackedByteArray = buffer.slice(offset+1,offset+1+size)
	values.append(bytes.get_string_from_utf8())
	offset += size + 1

func readType() -> void:
	if is_flag == false: flag_warning()
	values.append(buffer.get(offset + 3))
	offset += 12

func reader_warning() -> PacketUDP:
	print_rich("[color=yellow] Cant put bytes in a \"is_reading\" PacketUDP!")
	return self

func flag_warning() -> PacketUDP:
	print_rich("[color=yellow] reading is allready proccesed in PacketUDP!")
	return self

func _to_string() -> String:
	if is_reader: return str(values)
	return str(buffer)
