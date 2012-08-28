private-counters
pagesCounter
	"counter of only text/html pages"
	(self counters includesKey: #Pages) ifFalse: 
 		["self error: 'pagesCounter ??'."
		self counters 	at: #Pages put: WebCounter new].
	^self counters at: #Pages

"WebServer default pagesCounter"