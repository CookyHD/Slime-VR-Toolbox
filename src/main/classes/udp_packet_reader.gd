extends Object
class_name UDP_PacketReader

var buffer:PackedByteArray = PackedByteArray()
var offset:int = 0

func _init(data:PackedByteArray) -> void:
	self.buffer = data

func reset(data:PackedByteArray) -> void:
	self.buffer = data
	offset = 0

func readByte8() -> int:
	var value = buffer.get(offset)
	offset += 1
	return value

func readByte16() -> Array[int]:
	var value = [buffer.get(offset), buffer.get(offset+1)]
	offset += 2
	return value

func readInt() -> int:
	var bytes:PackedByteArray = buffer.slice(offset,offset+4)
	bytes.reverse()
	var value = bytes.decode_s32(0)
	offset += 4
	return value

func readFloat() -> float:
	var bytes:PackedByteArray = buffer.slice(offset,offset+4)
	bytes.reverse()
	var value = bytes.decode_float(0)
	offset += 4
	return value

func readShortString() -> String:
	var size:int = buffer.get(offset)
	var bytes:PackedByteArray = buffer.slice(offset+1,offset+1+size)
	var value = bytes.get_string_from_utf8()
	offset += size + 1
	return value

func readType() -> int:
	var value = buffer.get(offset + 3)
	offset += 12
	return value