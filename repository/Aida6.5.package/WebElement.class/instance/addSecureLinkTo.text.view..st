adding links
addSecureLinkTo: anObject text: aString view: aViewString
	^self add: ((WebLink text: aString  linkTo: anObject 
		view: aViewString) security: #grayed)