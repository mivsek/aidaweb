setup parameters
buttonsThirdLine
	"which buttons are in third line of toolbar"
	^self otherAt: #buttonsThirdLine ifAbsent: [self defaultButtonsThirdLine]