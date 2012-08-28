accessing
emails
	emails isNil ifTrue: [self initEMails].
	^emails