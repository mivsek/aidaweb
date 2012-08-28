accessing
indexedObjects
	"return a dictionary with objects which worlds are in index as keys and a set of pointers to third 
       level dictionary in index as values"
	indexedObjects isNil ifTrue: [self initIndexedObjects].
	^indexedObjects