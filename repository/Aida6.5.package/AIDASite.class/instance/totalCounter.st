private-counters
totalCounter
	"counter of all web requests"
	(self counters includesKey: #Total) ifFalse: 
 		["self error: 'totalCounter ??'."
		self counters at: #Total put: WebCounter new].
	^self counters at: #Total

"WebServer default totalCounter"