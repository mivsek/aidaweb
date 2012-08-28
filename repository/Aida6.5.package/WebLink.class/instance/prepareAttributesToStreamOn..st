private-streaming
prepareAttributesToStreamOn: aSession
	super prepareAttributesToStreamOn: aSession.
	self href: (self composeURLOn: aSession).