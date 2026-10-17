## `end` can still be used in declarations.
var end: int = 2

## Only applies to lines containing `end` by itself,
## regardless of indentation.
end
	end

## Example use case: improving readability.
func foo(number: int) -> int:
	return end + number
end
