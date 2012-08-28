adding links
addLinkTo: anObject text: aString attributes: anArray
	^self add: (WebLink text: aString  attributes: anArray linkTo: anObject)