adding links (image)
addLinkTo: anObject gif: aGifSymbol title: aString view: aViewSymbol
	^self add: (((WebLink linkTo: anObject) title: aString; view: aViewSymbol) 
		addGif: aGifSymbol; yourself)