accessing
surname
	surname isNil ifTrue: [self asPerson notNil ifTrue: [^self asPerson surname] ifFalse: [^''] ].
	^surname