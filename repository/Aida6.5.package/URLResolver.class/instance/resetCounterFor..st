request counting
resetCounterFor: anObject
	"reset counters for specified object. If not yet exist, initialize it first"
	anObject isNil ifTrue: [^nil].
	self site critical:
		[(self counters includesKey: anObject) ifFalse: 
			[self counters at: anObject put: WebCounter new].
		(self counters at: anObject) reset]