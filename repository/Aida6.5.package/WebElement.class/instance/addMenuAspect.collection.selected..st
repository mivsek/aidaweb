adding form elements
addMenuAspect: aSymbol collection: aCollection selected: aSelectedCollection
	"Multiple selection menu.. Aspect of every element in aColection will be shown in menu. 
	Selection will be put in aSelectedCollection. Here also an initial selection can be set"
	^self add: (WebMenu aspect: aSymbol collection: aCollection selected: aSelectedCollection)