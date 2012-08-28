events-single
at: aTimestamp runBlock: aBlock
	| event |
	event := WebScheduledEvent newOn: self.
	event at: aTimestamp runBlock: aBlock.
	self scheduleEvent: event.
	^event