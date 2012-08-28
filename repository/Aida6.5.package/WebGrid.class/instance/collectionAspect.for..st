accessing
collectionAspect: aCollectionMethodSymbol for: anObject
	"Wse this way for updatable grids, instread of setting a collection directy!"
	"When Ajax update request comes, aspect of this object is called to get a fresh collection"
	aspect := aCollectionMethodSymbol.
	object := anObject.