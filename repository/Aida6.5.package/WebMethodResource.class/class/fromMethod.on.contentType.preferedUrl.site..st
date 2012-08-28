instance creation
fromMethod: aSymbol on: anObject contentType: aString preferedUrl: aString2 site: anAIDASite
	^super new
		object: anObject;
		method: aSymbol;
		aidaContentType: aString;
		preferredUrl: aString2;
		site: anAIDASite