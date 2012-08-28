accessing
username: aString 
	self isLocked ifTrue: [^self error: 'user locked, changes not allowed! '].
	username := aString asLowercase trimBlanks.