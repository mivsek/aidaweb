testing-queue order
testOrderOf3AscEvents
	scheduler stop. "just testing order in queue!"
"	scheduler everyMinuteAt: 15 runBlock: [self transcript1].
	scheduler everyMinuteAt: 30 runBlock: [self transcript2].
	scheduler everyMinuteAt: 45 runBlock: [self transcript3].
	self assert: (scheduler queue at: 1) period value = 15.
	self assert: (scheduler queue at: 2) period value = 30.
	self assert: (scheduler queue at: 3) period value = 45.
"