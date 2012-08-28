drawing
drawYPoints
	| string c stepOne step mark b |
	c := self yBottomPosition.
	b := self yTopPosition.
	stepOne := 0.
	step :=self stepFor:(self getMax at: 1).
	c to: b
		by: (0-((c - b) // 5))
		do: 
			[:x | 
			string := stepOne printString.
			mark := (string asText emphasizeAllWith: #small) asComposedText.
			mark compositionWidth: 30.
			mark rightFlush.
			graphics add: mark at: (self xLeftPosition - 40) @ ( x -13).
			stepOne := stepOne + step]