adding links (image)
addLinkTo: anObject jpeg: aSymbol title: aString view: aViewSymbol
	^self add: (((WebLink linkTo: anObject) title: aString; view: aViewSymbol) 
		addJpeg: aSymbol; yourself)