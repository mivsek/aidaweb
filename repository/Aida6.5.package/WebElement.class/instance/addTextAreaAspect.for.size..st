adding form elements
addTextAreaAspect: aSymbol for: anObject size: aPoint
	^self add: ((WebTextArea new aspect:  aSymbol for: anObject) size: aPoint)