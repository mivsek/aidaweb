adding images
addMethodImage: aWebMethodImage size: aPoint
	^self add: 
		((WebImage image: aWebMethodImage) size: aPoint)