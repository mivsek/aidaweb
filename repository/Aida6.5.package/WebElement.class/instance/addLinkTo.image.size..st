adding links (image)
addLinkTo: anObject image: anImageOrURL size: aPoint
	^self add: ((WebLink linkTo: anObject) addImage: anImageOrURL size: aPoint; yourself)