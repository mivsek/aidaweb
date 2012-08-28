setup parameters
buttonsFirstLine
	"which buttons are in first line of toolbar"
	^self otherAt: #buttonsFirstLine ifAbsent: [self defaultButtonsFirstLine]