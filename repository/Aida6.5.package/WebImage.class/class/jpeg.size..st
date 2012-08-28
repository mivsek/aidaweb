instance creation
jpeg: aSymbol  size: aPoint
	"this method will be called in your webStyle and this method 
	should return a jpeg in byte array format"
	| methodImage image |
	image := self new.
	methodImage := WebMethodImage
		fromMethod: aSymbol 
		on: image style 
		contentType: 'image/jpeg' 
		site: image site.
	^image image: methodImage;  size: aPoint