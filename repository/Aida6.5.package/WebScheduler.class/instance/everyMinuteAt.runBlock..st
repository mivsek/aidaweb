events-periodic
everyMinuteAt: aSecondNumber  runBlock: aBlock
	| event |
	event := WebScheduledEvent newOn: self.
	event everyMinuteAt: aSecondNumber  runBlock: aBlock.
	self scheduleEvent: event.
	^event