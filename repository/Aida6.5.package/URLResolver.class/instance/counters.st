private
counters

	"dictionary of web counters for every object, registered in URLResolver"

	counters isNil ifTrue: [self initCounters].
	^counters.