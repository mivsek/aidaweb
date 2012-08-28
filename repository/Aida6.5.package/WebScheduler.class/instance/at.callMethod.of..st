events-single
at: aTimestamp callMethod: aSymbol of: anObject
	| event |
	event := WebScheduledEvent newOn: self.
	event at: aTimestamp callMethod: aSymbol of: anObject.
	self scheduleEvent: event.
	^event