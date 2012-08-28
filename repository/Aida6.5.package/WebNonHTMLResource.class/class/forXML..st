instance creation
forXML: aByteArray
	^super new
		aidaContentType: 'text/xml';
		content: aByteArray