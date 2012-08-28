adding links (image)
addLinkTo: anObject image: anImageOrURL parameter: aParmString value: aValueString
	^self add: (((WebLink linkTo: anObject)
		parameter: aParmString value: aValueString) addImage: anImageOrURL; yourself)