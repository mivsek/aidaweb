adding links (image)
addLinkTo: anObject png: aPngSymbol title: aString view: aViewSymbol
	^self add: (((WebLink linkTo: anObject) title: aString; view: aViewSymbol) 
		addPng: aPngSymbol; yourself)