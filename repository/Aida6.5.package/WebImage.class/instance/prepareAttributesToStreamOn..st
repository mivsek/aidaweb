private
prepareAttributesToStreamOn: aSession
	super prepareAttributesToStreamOn: aSession.
	(self attributesAt: #src) notNil  "image source already set"
		ifFalse: [self src: (self urlOnSession: aSession)].
	self imageMap notNil ifTrue: [self usemap: self imageMap name].