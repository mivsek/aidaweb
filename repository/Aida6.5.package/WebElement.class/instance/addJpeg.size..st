adding images
addJpeg: aSymbol size: aPoint
	"this method will be called in your webStyle and this method 
	should return a gif in byte array format"
	^self add: (WebImage jpeg: aSymbol size: aPoint)