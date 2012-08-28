private-accessing
newestValue

	"return a newest version of value in historyCollection."

	self values isEmpty
		ifTrue: [^nil]
		ifFalse: 	[^self values last]
	

"History new newestValue"