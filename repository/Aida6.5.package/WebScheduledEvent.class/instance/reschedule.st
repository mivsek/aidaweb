private
reschedule
	"calculate and set a new time to run, according to a period"
	self isDayPeriod ifTrue: 
		[self timestamp: (SpTimestamp fromSeconds: (self timestamp asSeconds + (60*60*24)))].
	self isHourPeriod ifTrue: 
		[self timestamp: (SpTimestamp fromSeconds: (self timestamp asSeconds + (60*60)))].
	self isMinutePeriod ifTrue: 
		[self timestamp: (SpTimestamp fromSeconds: (self timestamp asSeconds + 60))].
	self parent scheduleEvent: self.