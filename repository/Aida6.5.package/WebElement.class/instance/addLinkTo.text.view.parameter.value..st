adding links
addLinkTo: anObject text: aString view: aViewString  parameter: aParmString value: aValueString
	^self add: ((WebLink text: aString  linkTo: anObject)
		view: aViewString;
		parameter: aParmString value: aValueString; yourself)