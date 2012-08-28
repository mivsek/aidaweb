testing-states
isNoProcess
	"a context doesn't haveits own process to execute a request"
	^self state = #noprocess