private
stopWatchdog
	self watchdog notNil ifTrue: 
		[self watchdog terminate.
		self watchdog: nil].