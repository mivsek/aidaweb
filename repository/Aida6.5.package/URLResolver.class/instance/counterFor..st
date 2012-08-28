request counting
counterFor: anObject
	anObject isNil ifTrue: [^nil].
	(self counters includesKey: anObject)
		ifFalse: [self resetCounterFor: anObject].
	^self counters at: anObject