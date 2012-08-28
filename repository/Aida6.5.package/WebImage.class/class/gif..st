instance creation
gif: aSymbol
	"this method will be called in your webStyle and this method 
	should return a gif in byte array format"
	| methodImage image |
	image := self new.
	methodImage := WebMethodImage
		fromMethod: aSymbol 
		on: image style 
		contentType: 'image/gif' 
		site: image site.
	^image image: methodImage