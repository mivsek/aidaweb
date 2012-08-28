testing
isWrapped
	"basic elements (inputs, buttons, ..) must be wrapped in <span> element to become updatable"
	^self otherAt: #Wrapped ifAbsent: [false]