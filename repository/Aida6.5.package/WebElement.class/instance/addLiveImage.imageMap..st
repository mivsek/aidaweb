adding images
addLiveImage: aWebLiveImage imageMap: aWebImageMap
	^self add: 
		((WebImage image: aWebLiveImage)
			size: (aWebLiveImage width)@(aWebLiveImage height);
			imageMap: aWebImageMap)