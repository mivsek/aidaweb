instance creation
forPDFFile: aFilenameString
	^super new
		aidaContentType: 'application/pdf';
		filename: aFilenameString