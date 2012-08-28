accessing
user
	user isNil ifTrue: [self initUser].
	^user