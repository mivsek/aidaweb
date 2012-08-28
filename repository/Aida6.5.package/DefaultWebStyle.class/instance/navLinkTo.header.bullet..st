layout-navigation
navLinkTo: anObject header: aString bullet: aSymbol
	| e |
	e := WebText header: 3.
	e addGif: aSymbol size: 13@13.
	e addLinkTo: anObject text: ' ', aString.
	^e