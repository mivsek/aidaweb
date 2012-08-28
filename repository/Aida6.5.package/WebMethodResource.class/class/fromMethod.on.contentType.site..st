instance creation
fromMethod: aSymbol on: anObject contentType: aString site: anAIDASite
	^super new
		object: anObject;
		method: aSymbol;
		aidaContentType: aString;
		site: anAIDASite