private-cache
cache
	Cache isNil ifTrue: [self initCache].
	^Cache