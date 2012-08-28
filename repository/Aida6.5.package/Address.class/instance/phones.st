accessing
phones
	phones isNil ifTrue: [self initPhones].
	^phones