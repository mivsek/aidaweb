adding images
addImage: anImageOrURL size: aPoint align: aSymbol
	^self add: ((WebImage image: anImageOrURL size: aPoint) align: aSymbol)