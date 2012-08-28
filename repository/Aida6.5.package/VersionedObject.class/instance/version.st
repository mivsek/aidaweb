private
version
	version isNil ifTrue: [self initVersion].
	^version