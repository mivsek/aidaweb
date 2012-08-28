executing
finalizeExecutionOf: aRequest
	"do all necessary cleanup after request was composed and HTML streamed to response"
	self event: nil.   
	aRequest context: nil.	
	self answer: nil; result: nil.