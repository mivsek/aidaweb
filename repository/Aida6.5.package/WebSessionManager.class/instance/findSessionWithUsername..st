accessing
findSessionWithUsername: aString
	^self sessions detect: [:each | each user username = aString] ifNone: [nil].