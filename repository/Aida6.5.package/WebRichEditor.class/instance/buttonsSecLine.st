setup parameters
buttonsSecLine
	"which buttons are in second line of toolbar"
	^self otherAt: #buttonsSecLine ifAbsent: [self defaultButtonsSecLine]