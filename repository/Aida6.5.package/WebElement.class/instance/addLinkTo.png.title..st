adding links (image)
addLinkTo: anObject png: aPngSymbol title: aString
	^self add: ((WebLink linkTo: anObject) title: aString; addPng: aPngSymbol; yourself)