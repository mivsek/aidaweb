indexing
removeObject: anObject
	"remove object from all word pointers in index"
	(self indexedObjects at: anObject ifAbsent: [^nil]) do:
		[:each | each removeKey: anObject ifAbsent: [] ].
	self indexedObjects removeKey: anObject.