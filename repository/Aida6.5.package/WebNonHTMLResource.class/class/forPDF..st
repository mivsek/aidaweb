instance creation
forPDF: aByteArray
	^super new
		aidaContentType: 'application/pdf';
		content: aByteArray