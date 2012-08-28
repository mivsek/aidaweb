group management
groupNamed: aString
	aString isEmpty ifTrue: [^nil].
	^self groups detect: [:group | group name =  aString] ifNone: [nil]