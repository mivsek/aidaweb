request counting
removeCounterFor: anObject


	(self counters includesKey: anObject)
		ifTrue: [self counters removeKey: anObject]