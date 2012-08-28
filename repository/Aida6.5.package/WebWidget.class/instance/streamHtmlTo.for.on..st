private
streamHtmlTo: aStream for: aRequest on: aSession 
	self buildWhileStreaming
		ifTrue: [self build].
	self registerFormElementsTo: self form.	
	self setStateStreaming.
	super streamHtmlTo: aStream for: aRequest on: aSession.
	self setStateFinished.