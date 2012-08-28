accessing
username
	username isNil ifTrue: [self username: ''].
	^username