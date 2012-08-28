testing
testMinutePeriodicEvent
	"it should write twice to transcript in 2 minutes! "
	scheduler everyMinuteAt: 30 runBlock: [self transcript].
"	(Delay forSeconds: 120) wait "