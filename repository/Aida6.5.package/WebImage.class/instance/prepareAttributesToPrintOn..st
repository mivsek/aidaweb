private
prepareAttributesToPrintOn: aSession
	super prepareAttributesToPrintOn: aSession.
	self src: (self urlOnSession: aSession).
	self imageMap notNil ifTrue: [self usemap: self imageMap name].