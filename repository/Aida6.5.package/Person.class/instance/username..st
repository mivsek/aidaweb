accessing
username: aString 
	self asWebUser notNil ifTrue: [^self asWebUser username: aString trimBlanks].