private-events
eventHandlers
	eventHandlers isNil ifTrue: [self initEventHandlers].
	^eventHandlers