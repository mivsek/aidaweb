accessing
password: aString 
	self asWebUser notNil ifTrue: [^self asWebUser password: aString trimBlanks].