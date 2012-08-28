adding links
addSecureLinkTo: anObject 
	text: aString parameter: aParmString value: aValueString

	^self add: ((WebLink text: aString  linkTo: anObject 
		parameter: aParmString value: aValueString) security: #grayed)