private-streaming
prepareAttributesToPrintOn: aSession
	super prepareAttributesToPrintOn: aSession.
	self value notNil ifTrue:
		[self attributesAt: #value put: 
			(WebFormElement autoConvertAndEncodeValue: self value)]