instance creation
aspect: aSymbol for: anObject size: aNumberOrPoint allow: aBoolean
	^self new aspect: aSymbol for: anObject; 
		size: aNumberOrPoint;
		allow: aBoolean	"is edit allowed at all?"