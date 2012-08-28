testing
throughMidnightTest

	Janko := WebCounter new.
	[100 timesRepeat: 
		[Janko incCounter.
		(Delay forSeconds: 1) wait]
	] fork.
	^Janko inspect

"WebCounter throughMidnightTest"