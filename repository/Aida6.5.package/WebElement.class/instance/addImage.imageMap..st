adding images
addImage: anImageOrURL imageMap: aWebImageMap
	^self add: 
		((WebImage image: anImageOrURL)
			imageMap: aWebImageMap)