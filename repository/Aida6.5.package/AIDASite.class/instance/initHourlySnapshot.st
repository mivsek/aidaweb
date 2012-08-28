initialize-release
initHourlySnapshot
	"For default image based persistency"
	(self scheduler isScheduledBlock: [AIDASite preImageSnapshot; imageSnapshot]) "schedule only once!"
		ifTrue: [^nil]. 
	self scheduler
		everyHourAt: 0 
		runBlock: [AIDASite preImageSnapshot; imageSnapshot]