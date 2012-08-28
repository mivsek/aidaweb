instance creation
aspect: aSymbol filenameAspect: aSymbol2 contentTypeAspect: aSymbol3 forObject: anObject

	^self new aspect: aSymbol for: anObject; 
		filenameAspect: aSymbol2;
		contentTypeAspect: aSymbol3