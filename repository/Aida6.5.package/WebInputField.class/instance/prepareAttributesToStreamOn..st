private-streaming
prepareAttributesToStreamOn: aSession
	super prepareAttributesToStreamOn: aSession.
	self value isNil ifTrue: [^nil].
	self attributesAt: #value put:  
		(self adaptor format notNil
			ifTrue: [self adaptor convertedAndEncodedValue]
			ifFalse: [WebFormElement autoConvertAndEncodeValue: self adaptor value])