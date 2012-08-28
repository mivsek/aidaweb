private-serving
queue
	"for sending commands back to browser"
	queue isNil ifTrue: [self initQueue].
	^queue