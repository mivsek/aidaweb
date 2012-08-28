adding links
addLinkTo: anObject text: aString parameter: aParmString value: aValueString
	^self add: (WebLink text: aString  linkTo: anObject 
		parameter: aParmString value: aValueString)