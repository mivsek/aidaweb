events-periodic
everyDayAt: aTimeOrHour runBlock: aBlock
	| event |
	event := WebScheduledEvent newOn: self.
	event everyDayAt: aTimeOrHour runBlock: aBlock.
	self scheduleEvent: event.
	^event