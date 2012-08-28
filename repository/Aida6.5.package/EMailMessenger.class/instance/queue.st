accessing
queue
	queue isNil ifTrue: [self initQueue].
	^queue.