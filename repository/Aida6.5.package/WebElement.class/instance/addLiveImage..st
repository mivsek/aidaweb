adding images
addLiveImage: aWebLiveImage
	^self add: 
		((WebImage image: aWebLiveImage)
			size: (aWebLiveImage width)@(aWebLiveImage height))