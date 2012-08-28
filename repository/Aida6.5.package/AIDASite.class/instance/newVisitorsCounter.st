private-counters
newVisitorsCounter
	"counter of new sessions"
	(self counters includesKey: #NewVisitors) ifFalse: 
 		["self error: 'newVisitorsCounter ??'."
		self counters at: #NewVisitors put: WebCounter new].
	^self counters at: #NewVisitors

"WebServer default newVisitorsCounter"