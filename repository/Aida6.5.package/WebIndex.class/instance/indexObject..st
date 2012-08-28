indexing
indexObject: anObject
	"if anObject responds to a message indexText, then index all its world in index.
	 However, first 	remove indexing for that object if already exist (so, for reindexing  
	objects, use this method also). For performance reasons indexing is done in background"
	self workQueue nextPut: anObject.

"WebIndex default indexObject: WebIndex default"