events-periodic
everyMinuteAt: aSecondNumber callMethod: aSymbol of: anObject
	| event |
	event := WebScheduledEvent newOn: self.
	event everyMinuteAt: aSecondNumber callMethod: aSymbol of: anObject.
	self scheduleEvent: event.
	^event