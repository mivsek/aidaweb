accessing
cache
	Cache isNil ifTrue: [self initCache].
	^Cache