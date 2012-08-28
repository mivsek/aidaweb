instance creation
newId: aSymbol
	"new with id as specified. Be sure that you set some tag too, otherwise this id attribute won't be shown!"
	^self new
		setDiv;
		id: aSymbol