adding form buttons
addButtonJpeg: anImageSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage jpeg: anImageSymbol))