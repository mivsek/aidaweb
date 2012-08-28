adding form buttons
addButtonPng: anImageSymbol action: aSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage png: anImageSymbol) action: aSymbol)