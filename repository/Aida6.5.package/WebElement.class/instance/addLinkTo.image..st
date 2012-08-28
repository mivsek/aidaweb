adding links (image)
addLinkTo: anObject image: anImageOrURL
	^self add: ((WebLink linkTo: anObject) addImage: anImageOrURL; yourself)