private
streamHtmlTo: aStream for: aRequest on: aSession
	self ensureId.
	self button: self buttonImage. self button registerId.
	super streamHtmlTo: aStream for: aRequest on: aSession.
	self button streamHtmlTo: aStream for: aRequest on: aSession.
	self addCalendarSetupScriptOn: aStream.