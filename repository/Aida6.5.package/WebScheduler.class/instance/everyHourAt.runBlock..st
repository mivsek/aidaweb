events-periodic
everyHourAt: aMinuteNumber  runBlock: aBlock
	| event |
	event := WebScheduledEvent newOn: self.
	event everyHourAt: aMinuteNumber  runBlock: aBlock.
	self scheduleEvent: event.
	^event