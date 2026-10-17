## end still can be used for declarations
var end:int = 2

## Only applies to lines with a single "end" in it
end
## no matter the indent level
		end

func foo(number:int) -> int:
	return end + number
end

## ^^^ Use case example to improve readability
