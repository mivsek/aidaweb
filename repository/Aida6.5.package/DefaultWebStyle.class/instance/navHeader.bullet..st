layout-navigation
navHeader: aString bullet: aSymbol
	^(WebText header: 3)
		addGif: aSymbol size: 13@13; addText: aString; yourself.