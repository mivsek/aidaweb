layout-navigation
navHeader: aString bullet: aSymbol linkTo: anObject view: aView parameter: aParmString value: aValueString
	^(WebText header: 3)
		addGif: aSymbol size: 13@13; addLinkTo: anObject text: aString 
		view: aView parameter: aParmString value: aValueString;
			yourself.