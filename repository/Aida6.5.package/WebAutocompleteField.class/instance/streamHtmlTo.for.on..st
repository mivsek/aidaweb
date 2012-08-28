private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	| choicesElement |
	choicesElement := (WebElement newClass: #'auto_complete') parent: self.
	self ensureId. choicesElement ensureId.
	super streamHtmlTo: aStream for: aRequest on: aSession.
	choicesElement streamHtmlTo: aStream for: aRequest on: aSession.
	self addSetupScriptOn: aStream choicesElement: choicesElement.