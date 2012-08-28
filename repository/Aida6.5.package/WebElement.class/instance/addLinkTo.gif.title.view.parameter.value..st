adding links (image)
addLinkTo: anObject gif: aGifSymbol title: aString view: aViewSymbol
	 parameter: aParmString value: aValueString

	^self add: (((WebLink linkTo: anObject) 
		title: aString; view: aViewSymbol;
		parameter: aParmString value: aValueString) 
			addGif: aGifSymbol; yourself)