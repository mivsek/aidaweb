accessing
addView: aSymbol description: aString
	(self views contains: [:each | each key == aSymbol asSymbol]) 
		ifFalse: [self views add: (Association key: aSymbol asSymbol value: (Array with: aString with: #()))]