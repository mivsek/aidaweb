adding form buttons
addButtonGif: anImageSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage gif: anImageSymbol))