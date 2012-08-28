referers
refererStopList
	refererStopList isNil ifTrue: [self initRefererStopList].
	^refererStopList