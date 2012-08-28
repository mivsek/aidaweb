model adapting
aspect: aSymbol collection: aCollection selected: aSelectedCollection
	self adaptor: ((AidaModelAdaptor forAspect: aSymbol) subject: aCollection).
	self selected: aSelectedCollection.
	self setMultiple.
	self size: 4.