adding form buttons
addButtonGif: anImageSymbol action: aSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage gif: anImageSymbol) action: aSymbol)