accessing
name
	name isNil ifTrue: [self asPerson notNil ifTrue: [^self asPerson name] ifFalse: [^''] ].
	^name