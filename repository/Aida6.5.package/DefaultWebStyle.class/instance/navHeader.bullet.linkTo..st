layout-navigation
navHeader: aString bullet: aSymbol linkTo: anObject
	^(WebText header: 3)
		addGif: aSymbol size: 13@13; addLinkTo: anObject text: aString; yourself.