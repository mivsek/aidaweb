accessing
view
	"on which app view this element was created"
	self element isNil ifTrue: [^nil].
	^self element creationContext notNil
		ifTrue: [self element creationContext view]
		ifFalse: [self element app view]