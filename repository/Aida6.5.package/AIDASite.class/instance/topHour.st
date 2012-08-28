private-counters
topHour
	"a hour of most hits, an array with timestamp, hits and pages"
	(self counters includesKey: #TopHour) ifFalse: 
 		[self counters at: #TopHour put: (Array with: Timestamp now with: 0 with: 0)].
	^self counters at: #TopHour

"WebServer default topHour"