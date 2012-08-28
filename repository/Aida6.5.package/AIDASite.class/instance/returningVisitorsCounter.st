private-counters
returningVisitorsCounter
	"counter of returning sessions"
	(self counters includesKey: #ReturningVisitors) ifFalse: 
 		["self error: 'returningVisitorsCounter ??'."
		self counters
			at: #ReturningVisitors put: WebCounter new].
	^self counters at: #ReturningVisitors

"WebServer default returningVisitorsCounter"