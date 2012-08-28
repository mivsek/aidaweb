adding links
addPDFLinkTo: anObject
	^self add: ((WebLink linkTo: anObject) addGif: #pdfBigGif)