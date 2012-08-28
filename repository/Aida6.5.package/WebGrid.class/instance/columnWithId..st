accessing
columnWithId: aNumber
	aNumber > self columns size ifTrue: [^nil].
	^self columns at: aNumber