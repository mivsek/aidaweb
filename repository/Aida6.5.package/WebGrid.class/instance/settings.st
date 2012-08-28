private
settings
	settings isNil ifTrue: [self initSettings].
	^settings