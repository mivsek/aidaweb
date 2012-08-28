instance creation
beforeStreamingDo: aBlock filenameAspect: aSymbol2 forObject: anObject
	"A block will be called just before streaming begins, with a HTTPPostDatum as parameter. Block
	 must set a write stream in datum (for instance open an output file and stream on it)"
	"example block: [:datum | datum writeStream: 'myfile' writeStream binary] "
	"Don't forget to close such a stream after! This can be done in App action method"
	^self new 
		writeBlock: aBlock; 
		object: anObject; 
		filenameAspect: aSymbol2