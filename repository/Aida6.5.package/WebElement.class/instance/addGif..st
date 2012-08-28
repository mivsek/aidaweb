adding images
addGif: aSymbol
	"this method will be called in your webStyle and this method 
	should return a gif in byte array format"
	^self add: (WebImage gif: aSymbol)