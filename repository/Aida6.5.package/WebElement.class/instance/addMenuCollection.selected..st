adding form elements
addMenuCollection: aCollection selected: aSelectedCollection
	"Multiple selection menu..Every element (text!) in aColection will be shown in menu. 
	Selection will be put 	in aSelectedCollection. Here also an initial selection can be set"
	^self add: (WebMenu collection: aCollection selected: aSelectedCollection)