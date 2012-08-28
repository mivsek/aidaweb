private-serving
resourceFor: aRequest
	"from router to know, where to route a request. Route it to request's session"
	^aRequest session