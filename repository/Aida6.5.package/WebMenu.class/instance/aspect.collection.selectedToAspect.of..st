model adapting
aspect: aSymbol collection: aCollection selectedToAspect: aSymbol2 of: anObject
	self multiple: false.
	self adaptor: ((AidaModelAdaptor forAspect: aSymbol) subject: aCollection).
	self adaptorToStore: ((AidaModelAdaptor forAspect: aSymbol2) subject: anObject).