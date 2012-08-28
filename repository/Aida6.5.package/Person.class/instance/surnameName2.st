accessing
surnameName2
	^self surnameName trimBlanks notEmpty 
		ifTrue: [self surnameName]
		ifFalse: ['--brez priimka in imena---']