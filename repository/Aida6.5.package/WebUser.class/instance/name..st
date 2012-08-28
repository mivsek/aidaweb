accessing
name: aString 
	self isLocked ifTrue: [^self error: 'user locked, changes not allowed! '].
	self asPerson notNil ifTrue: [^self asPerson name: aString].
	name := aString trimBlanks.