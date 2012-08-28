adding links (image)
addLinkTo: anObject gif: aGifSymbol title: aString size: aPoint
	^self add: ((WebLink linkTo: anObject) title: aString; addGif: aGifSymbol size: aPoint; yourself)