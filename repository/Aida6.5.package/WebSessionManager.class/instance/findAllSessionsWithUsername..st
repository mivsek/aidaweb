accessing
findAllSessionsWithUsername: aString
	^self sessions values select: [:each | each user username = aString]