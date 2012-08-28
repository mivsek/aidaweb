private
autoConvert: anObject
	(anObject class == Date and: [self parent hasShortDates]) 
		ifTrue: [^anObject shorterPrintSloString].
	(anObject class == SpDate) "Sport portable date"
		ifTrue: [^anObject shorterPrintSloString].
	(anObject class == SpTimestamp) "Sport portable timestamp"
		ifTrue: [^anObject printString].
	(anObject = 0 and: [self parent hasNoZeros]) ifTrue: [^''].
	^WebFormElement autoConvertToString: anObject