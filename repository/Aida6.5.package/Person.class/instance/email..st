accessing
email: aString 
	self asWebUser notNil 
		ifTrue: [self asWebUser email: aString]
		ifFalse: [super email: aString].