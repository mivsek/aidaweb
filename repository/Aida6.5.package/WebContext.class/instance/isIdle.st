testing-states
isIdle
	"a context's process is in idle state, waiting to get a signal to execute next request"
	^self state = #idle