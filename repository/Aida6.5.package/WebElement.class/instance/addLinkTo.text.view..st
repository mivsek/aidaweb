adding links
addLinkTo: anObject text: aString view: aViewString
	^self add: ((WebLink text: aString  linkTo: anObject)
		view: aViewString; yourself)