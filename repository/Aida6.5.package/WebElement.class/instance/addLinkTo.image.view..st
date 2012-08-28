adding links (image)
addLinkTo: anObject image: anImageOrURL view: aViewSymbol
	^self add: (((WebLink linkTo: anObject) view: aViewSymbol) 
		addImage: anImageOrURL; yourself)