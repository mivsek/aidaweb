accessing
events
	events isNil ifTrue: [self initEvents].
	^events