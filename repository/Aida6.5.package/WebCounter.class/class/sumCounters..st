summing
sumCounters: aCounterCollection

	"return a new counter with sum of all specified counters"
	| sumCounter |
	sumCounter := WebCounter new.
	aCounterCollection do: [:counter |
		sumCounter addCounter: counter].
	^sumCounter