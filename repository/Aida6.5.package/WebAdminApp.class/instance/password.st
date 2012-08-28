accessing
password
	password isNil ifTrue: [self password: ''].
	^password