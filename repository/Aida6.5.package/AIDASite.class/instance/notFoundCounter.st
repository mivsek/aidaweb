private-counters
notFoundCounter
	"counter of not found errors"
	(self counters includesKey: #NotFound) ifFalse: 
 		[self counters at: #NotFound put: WebCounter new].
	^self counters at: #NotFound

"WebServer default notFoundCounter"