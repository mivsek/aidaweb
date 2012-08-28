initialize-release
initNightlyCleanup
	"releasing session application state and other cleanup every night at 4:00"
	(self scheduler isScheduledBlock: [self nightlyCleanup]) ifTrue: [^nil]. "schedule only once!"
	self scheduler
		everyDayAt: 4 
		runBlock:  [self nightlyCleanup]