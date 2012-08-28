accessing
addView: aSymbol description: aString also: aSymbolArray
	"if view is in aSymbolArray, then it is also considered selected"
	(self views contains: [:each | each key == aSymbol asSymbol]) 
		ifFalse: [self views add: (Association key: aSymbol asSymbol 
			value: (Array with: aString with: aSymbolArray))]