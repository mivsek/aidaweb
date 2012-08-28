accessing
app
	^self element notNil
		ifTrue: [self element app]	"on which app this element was built"
		ifFalse: [nil]