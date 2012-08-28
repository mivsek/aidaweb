accessing
olderVersionSpecs
	"return all version specs of that object, older than this one"
	self isOldest ifTrue: [^#()].
	^OrderedCollection new 
		addAll: self parent version olderVersionSpecs; add: self parent version;
		yourself