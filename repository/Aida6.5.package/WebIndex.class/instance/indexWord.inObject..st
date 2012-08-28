indexing
indexWord: aString inObject: anObject
	"put a word in that object in index if word is valid one for indexing"
	self indexWord: aString occurences: 1 inObject: anObject