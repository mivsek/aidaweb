private-counters
counters

	counters isNil ifTrue: [self initCounters].
	^counters

"WebServer default counters"