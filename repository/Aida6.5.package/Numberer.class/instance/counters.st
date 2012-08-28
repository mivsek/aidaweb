private
counters
	counters isNil ifTrue: [self initCounters].
	^counters