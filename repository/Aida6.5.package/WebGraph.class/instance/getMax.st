accessing
getMax
	| b max1 maxim maxAt |
	max1 := 0.
	b := self data size.
	1 to: b
		do: [:x | (data at: x) > max1 ifTrue: 
					[max1 := data at: x.
					maxAt := x]].
	maxim := max1.
	^Array with: maxim with: maxAt.