private-parsing
consume: aString returning: anObject
	aString do: [:c | self next == c ifFalse: [self error: 'Expected ''', aString, ''''] ].
	^ anObject