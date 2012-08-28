request counting
incCounterFor: anObject
	"increment a web counter for that object. Only text/html object are counted
	Don't count temporary objects"
	(anObject aidaContentType = 'text/html') ifFalse: [^nil].
	self site critical: 
		[(self counters includesKey: anObject) ifFalse: [self resetCounterFor: anObject].
		(self counters at: anObject) incCounter.
		"self totalCounter incCounter   **aWebServer already counts! "]