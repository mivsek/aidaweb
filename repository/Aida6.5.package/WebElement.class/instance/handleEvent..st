private-events
handleEvent: aWebEvent
	| handler |
	handler := self eventHandlerFor: aWebEvent event.
	handler isNil ifTrue: [self error: 'handler for that event does not exist'].
	^handler handleEvent: aWebEvent