private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	self ensureId. 
	self addSetupScript.
	super streamHtmlTo: aStream for: aRequest on: aSession.