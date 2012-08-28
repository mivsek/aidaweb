serving
answer: anObject to: aRequest on: aWebSession
	aRequest isGet | aRequest isPost | aRequest isHead
		ifTrue: [^self answer: anObject toGetOrPost: aRequest on: aWebSession].
	aRequest isOptions ifTrue: [^self answer: anObject toOptions: aRequest on: aWebSession].
	aRequest isPropFind ifTrue: [^self answer: anObject toPropFind: aRequest on: aWebSession].
	aRequest isLock ifTrue: [^self answer: anObject toLock: aRequest on: aWebSession].
	aRequest isUnlock ifTrue: [^self answer: anObject toUnlock: aRequest on: aWebSession].
	aRequest isPut ifTrue: [^self answer: anObject toPut: aRequest on: aWebSession].
	^HTTPException notImplemented