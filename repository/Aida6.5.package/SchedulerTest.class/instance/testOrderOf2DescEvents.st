testing-queue order
testOrderOf2DescEvents
	scheduler stop. "just testing order in queue!"
"	scheduler everyMinuteAt: 30 runBlock: [self transcript1].
	scheduler everyMinuteAt: 15 runBlock: [self transcript2].
	self assert: (scheduler queue at: 1) period value = 15.
	self assert: (scheduler queue at: 2) period value = 30.
"