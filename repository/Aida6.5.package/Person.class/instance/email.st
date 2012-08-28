accessing
email
	^self asWebUser notNil 
		ifTrue: [self asWebUser email]
		ifFalse: [super email].