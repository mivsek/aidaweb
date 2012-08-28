private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession.
	self setStateStreaming.
	super streamHtmlTo: aStream for: aRequest on: aSession. "a form"
	self setStateFinished.