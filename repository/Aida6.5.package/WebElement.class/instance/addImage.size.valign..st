adding images
addImage: anImageOrURL size: aPoint valign: aSymbol
	^self add: ((WebImage image: anImageOrURL size: aPoint) valign: aSymbol)