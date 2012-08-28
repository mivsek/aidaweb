accessing-other
lastRequest: aRequest
	"remember the last, actualy current request pending. also add request to the history in a request 
	if logging is on. If first request then also try to find country, language and codePage 
	of the originator"
	self otherAt: #lastRequest put: aRequest.  
	self initParms.				      "clear old parameters"
	self newView: (aRequest queryAt: #view ifAbsent: ['']).  "default new view is view from last request"