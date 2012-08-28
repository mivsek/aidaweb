accessing-other
lastRequest
	"the last, actualy current request pending. also add request to the history in a request 
	if logging is on."
	"BE CAREFULL! more than one request can be processed concurrently, so don't count 
	that last reques is actually a current one too! It mostly is, but not always!"
	^self otherAt: #lastRequest