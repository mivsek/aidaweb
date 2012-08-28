accessing
passwordText: aString
	aString = self passwordText "all *****, this means that password was not changed"
		ifTrue: [^nil]. 
	aString trimBlanks isEmpty ifTrue: [^nil].
	^self password: aString