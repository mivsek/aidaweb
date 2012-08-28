model adapting
collection: aCollection selectedToAspect: aSymbol of: anObject
	self multiple: false.
	self adaptor: (AidaModelAdaptor new subject: aCollection). "just to hold our collection"
	self adaptorToStore: ((AidaModelAdaptor forAspect: aSymbol) subject: anObject).