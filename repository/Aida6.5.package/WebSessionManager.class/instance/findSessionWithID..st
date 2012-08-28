accessing
findSessionWithID: anIDNumber
	^self sessions at: anIDNumber ifAbsent: [nil].
