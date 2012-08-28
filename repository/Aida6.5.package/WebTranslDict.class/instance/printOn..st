private
printOn: aStream
	aStream nextPutAll: 'aWebTranslDict ('.
	self dict keysAndValuesDo: [:key :value | 
		aStream nextPutAll: key printString, '->', value printString, ' '].
	aStream nextPutAll: ') '