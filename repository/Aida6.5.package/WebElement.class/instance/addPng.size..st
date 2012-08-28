adding images
addPng: aSymbol size: aPoint
	"this method will be called in your webStyle and this method 
	should return a png in byte array format"
	^self add: (WebImage png: aSymbol size: aPoint)