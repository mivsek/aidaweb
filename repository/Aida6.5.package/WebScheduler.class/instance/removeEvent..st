events-single
removeEvent: anEvent
	"stop running  this single or periodic event"
	self critical: 
		[self queue 
			remove: anEvent
			ifAbsent: [self error: 'Scheduler: this event does not exist'] ]