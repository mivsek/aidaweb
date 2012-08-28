adding links
addLinkTo: anObject text: aString
	^self add: (WebLink text: aString  linkTo: anObject)