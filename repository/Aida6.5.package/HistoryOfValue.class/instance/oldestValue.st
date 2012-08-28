private-accessing
oldestValue

	"return a oldest version of value"

	self values isEmpty
		ifTrue: [^nil]
		ifFalse: 	[^self values last]
	

"History new oldestValue"