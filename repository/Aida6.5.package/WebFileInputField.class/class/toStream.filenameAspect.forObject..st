instance creation
toStream: aStream filenameAspect: aSymbol2 forObject: anObject
	"wrrite uploaded file directly to aStream, which must be binary"
	^self new 
		writeStream: aStream; 
		object: anObject; 
		filenameAspect: aSymbol2