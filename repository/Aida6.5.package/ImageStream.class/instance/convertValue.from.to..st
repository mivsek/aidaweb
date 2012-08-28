private
convertValue: value from: fromScale to: toScale 
	^value = 0
		ifTrue: [0]
		ifFalse: [value = fromScale
				ifTrue: [toScale]
				ifFalse: [(value + 1 * (toScale + 1) / (fromScale + 1)) rounded - 1 max: 0]]