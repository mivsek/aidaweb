model adapting
collection: aCollection selected: aSelectedCollection
	self adaptor: (AidaModelAdaptor new subject: aCollection). "just to hold our collection"
	self selected: aSelectedCollection.
	self setMultiple.
	self size: 4.