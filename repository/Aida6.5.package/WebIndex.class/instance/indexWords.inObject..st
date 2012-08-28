private-indexing
indexWords: aWordDictionary inObject: anObject
	self removeObject: anObject.  "if exist"
	aWordDictionary keysAndValuesDo: [:key :value | 
		self indexWord: key occurences: value inObject: anObject].