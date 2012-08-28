private-contexts
contextForView: aSymbol
	^self contexts values 
		detect: [:ctx | ctx isFirst and: [ctx view = aSymbol] ] 
		ifNone: [nil]