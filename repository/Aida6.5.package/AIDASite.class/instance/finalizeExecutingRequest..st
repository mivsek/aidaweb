private-serving
finalizeExecutingRequest: aRequest
	"do all necessary cleanup in execution context"
	aRequest context isNil ifTrue: [^nil].
	aRequest context finalizeExecutionOf: aRequest