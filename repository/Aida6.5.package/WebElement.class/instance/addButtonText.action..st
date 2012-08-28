adding form buttons
addButtonText: aString action: aSymbol
	"for more than one buttons. Action method is a composed name from 'action', aView, Symbol.
	example: for view #main, action #addFolder is action method #actionMainAddFolder"
	^self add: (WebButton text: aString action: aSymbol)