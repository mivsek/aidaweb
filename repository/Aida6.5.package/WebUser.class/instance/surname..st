accessing
surname: aString 
	self isLocked ifTrue: [^self error: 'user locked, changes not allowed! '].
	self asPerson notNil ifTrue: [^self asPerson surname: aString].
	surname := aString trimBlanks.