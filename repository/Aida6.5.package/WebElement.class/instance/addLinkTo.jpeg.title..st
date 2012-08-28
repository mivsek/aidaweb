adding links (image)
addLinkTo: anObject jpeg: aSymbol title: aString
	^self add: ((WebLink linkTo: anObject) title: aString; addJpeg: aSymbol; yourself)