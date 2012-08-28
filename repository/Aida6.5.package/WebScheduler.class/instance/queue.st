private
queue
	"queue of events next one to run on first place"
	queue isNil ifTrue: [self initQueue].
	^queue