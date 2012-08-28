testing-states
isInterrupted
	"a context's process is in an interrupted state, waiting for subcontext to finish and close"
	^self state = #interrupted