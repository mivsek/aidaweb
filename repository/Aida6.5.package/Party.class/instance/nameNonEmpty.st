accessing
nameNonEmpty
	^self name trimBlanks notEmpty 
		ifTrue: [self name] 
		ifFalse: ['-- no name --'].