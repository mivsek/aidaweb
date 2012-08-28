adding links
addSecureLinkTo: anObject text: aString
	^self add: ((WebLink text: aString  linkTo: anObject) security: #grayed)