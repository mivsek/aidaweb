adding form buttons
addButtonJpeg: anImageSymbol action: aSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage jpeg: anImageSymbol) action: aSymbol)