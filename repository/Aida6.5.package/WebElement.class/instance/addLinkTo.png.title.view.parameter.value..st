adding links (image)
addLinkTo: anObject png: aPngSymbol title: aString view: aViewSymbol
	 parameter: aParmString value: aValueString

	^self add: (((WebLink linkTo: anObject) 
		title: aString; view: aViewSymbol;
		parameter: aParmString value: aValueString) 
			addPng: aPngSymbol; yourself)