instance creation
newFor: anObject on: aSession
	^self new
		observee: anObject;
		session: aSession