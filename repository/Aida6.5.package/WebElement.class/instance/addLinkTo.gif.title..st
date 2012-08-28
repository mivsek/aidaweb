adding links (image)
addLinkTo: anObject gif: aGifSymbol title: aString
	^self add: ((WebLink linkTo: anObject) title: aString; addGif: aGifSymbol; yourself)