private
rgbIntegerArrayFor: aPalette 
	| colors |
	colors := Array new: aPalette maxIndex + 1.
	1 to: colors size do: [:i | colors at: i put: (self rgbIntegerFrom: (aPalette at: i - 1 ifAbsent: [ColorValue white]))].
	^colors