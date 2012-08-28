adding ajax components
addInPlaceEditableTextAspect: aSymbol for: anObject size: aNumberOrPoint allow: aBoolean
	^self add: 
		(WebInPlaceEditableText aspect:  aSymbol for: anObject size: aNumberOrPoint allow: aBoolean)