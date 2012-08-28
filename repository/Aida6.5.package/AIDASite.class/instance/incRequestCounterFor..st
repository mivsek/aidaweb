private-counters
incRequestCounterFor: anObject
	"call this after each request is processed"
	self critical:
		[self totalCounter incCounter.
		(anObject aidaContentType = 'text/html') 
			ifTrue: [self pagesCounter incCounter] ].