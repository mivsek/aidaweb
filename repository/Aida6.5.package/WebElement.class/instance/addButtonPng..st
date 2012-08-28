adding form buttons
addButtonPng: anImageSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage jpeg: anImageSymbol))