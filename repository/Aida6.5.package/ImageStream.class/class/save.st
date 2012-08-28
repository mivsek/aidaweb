saving
save
	"ImageStream save."

	| encodingName fileName classCollection aStream |
	encodingName := #default.
	fileName := 'ImgStrm.st'.
	classCollection := self saveClasses.
	aStream := (fileName asFilename withEncoding: encodingName) writeStream.
	[Cursor write
		showWhile: 
			[| timeStamp |
			timeStamp := Date today shortPrintString , ' ' , Time now shortPrintString.
			aStream cr.
			aStream nextChunkPut: timeStamp printString.
			aStream cr; cr.
			(self comment isNil or: [self comment isEmpty])
				ifFalse: 
					[aStream nextChunkPut: self comment printString.
					aStream cr; cr].
			classCollection
				do: 
					[:aClass | 
					aStream nextChunkPut: aClass definition.
					aStream cr; cr].
			classCollection
				do: 
					[:aClass | 
					| sourceCodeStream |
					aStream nextPut: Character newPage.
					aStream cr.
					sourceCodeStream := SourceCodeStream on: aStream.
					aClass fileOutSourceOn: sourceCodeStream.
					aStream cr]]]
		valueNowOrOnUnwindDo: [aStream close].
	^classCollection