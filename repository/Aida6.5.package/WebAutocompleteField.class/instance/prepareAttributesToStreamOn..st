private-streaming
prepareAttributesToStreamOn: aSession
	"if choiceAspect is set, use it! "
	super prepareAttributesToStreamOn: aSession.
	self choiceAspect isNil ifTrue: [^super prepareAttributesToStreamOn: aSession].
	self value isNil ifTrue: [^nil].
	(self value class canUnderstand: self choiceAspect) ifFalse: [^nil].
	self attributesAt: #value put: 
		(WebFormElement autoConvertAndEncodeValue: (self value perform: self choiceAspect))