caching
cache
	cache isNil ifTrue: [self initCache].
	^cache