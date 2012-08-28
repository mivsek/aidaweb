private-building
printNumber: aNumber object: anObject in: anElement
	anElement addText: 
		(self startTagFor: anObject), aNumber printDotString, '.', (self endTagFor: anObject)