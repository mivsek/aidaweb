private-streaming
prepareToHtmlStreamingOn: aSession
	super prepareToHtmlStreamingOn: aSession.
	self addEnterTabScriptIfNessesary.