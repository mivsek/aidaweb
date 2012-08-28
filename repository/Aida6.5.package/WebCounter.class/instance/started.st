accessing
started
	"return a timestamp, from when web visits are counted"

	started isNil ifTrue: [self initStarted].
	^SpTimestamp fromSeconds: started