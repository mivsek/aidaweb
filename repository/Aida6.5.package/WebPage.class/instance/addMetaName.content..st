header elements
addMetaName: aNameString content: aContentString
	self addHeader: 'meta' value: 'name="', aNameString, '" content="', aContentString, '"'