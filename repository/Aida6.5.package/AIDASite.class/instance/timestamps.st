private
timestamps
	timestamps isNil ifTrue: [self initTimestamps].
	^timestamps