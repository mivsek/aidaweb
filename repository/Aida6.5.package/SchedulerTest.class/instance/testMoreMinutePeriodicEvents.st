testing
testMoreMinutePeriodicEvents
	"it should write to transcript in 2 minutes! "
"	scheduler everyMinuteAt: 30 runBlock: [self transcript1].
	scheduler everyMinuteAt: 15 runBlock: [self transcript2].
	scheduler everyMinuteAt: 45 runBlock: [self transcript3].
	scheduler everyMinuteAt: 20 runBlock: [self transcript4].
""	(Delay forSeconds: 120) wait"