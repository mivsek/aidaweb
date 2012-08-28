private-counters
topMinute
	"a minute of most hits, an array with timestamp, hits and pages"
	(self counters includesKey: #TopMinute) ifFalse: 
 		[self counters at: #TopMinute put:  (Array with: Timestamp now with: 0 with: 0)].
	^self counters at: #TopMinute

"WebServer default topMinute"