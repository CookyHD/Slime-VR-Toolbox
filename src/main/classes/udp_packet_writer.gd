extends Object
class_name UDP_PacketBuilder

var buffer:PackedByteArray = PackedByteArray()
var offset:int = 0

func finish() -> PackedByteArray:
	return buffer

func reset() -> void:
	buffer = PackedByteArray()
	offset = 0

func addByte8(byte:int) -> UDP_PacketBuilder:
	buffer.append(byte)
	offset += 1
	return self

func addByte16(byte:int) -> UDP_PacketBuilder:
	buffer.append_array([0,byte])
	offset += 2
	return self

func addInt(number:int) -> UDP_PacketBuilder:
	var bytes:PackedByteArray = [0,0,0,0]
	bytes.encode_s32(0,number)
	bytes.reverse()
	buffer.append_array(bytes)
	offset += 4
	return self

func addFloat(number:float) -> UDP_PacketBuilder:
	var bytes:PackedByteArray = [0,0,0,0]
	bytes.encode_float(0,number)
	bytes.reverse()
	buffer.append_array(bytes)
	offset += 4
	return self

func addShortString(string:String) -> UDP_PacketBuilder:
	var size:int = string.length()
	buffer.append(size)
	buffer.append_array(string.to_utf8_buffer())
	offset += size + 1
	return self

func addType(type:int) -> UDP_PacketBuilder:
	buffer.append_array([0,0,0,type,0,0,0,0,0,0,0,0])
	offset += 12
	return self
