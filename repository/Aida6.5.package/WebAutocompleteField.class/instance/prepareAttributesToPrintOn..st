private-streaming
prepareAttributesToPrintOn: aSession
	"if choiceAspect is set, use it! "
	super prepareAttributesToPrintOn: aSession.
	self choiceAspect isNil ifTrue: [^super prepareAttributesToPrintOn: aSession].
	self value isNil ifTrue: [^nil].
	(self value class canUnderstand: self choiceAspect) ifFalse: [^nil].
	self attributesAt: #value put: 
		(WebFormElement autoConvertAndEncodeValue: (self value perform: self choiceAspect))