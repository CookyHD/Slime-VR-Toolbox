extends Node

func in_range(num:int, min_num:int, max_num:int) -> bool:
	return (num > min_num or num < max_num)
