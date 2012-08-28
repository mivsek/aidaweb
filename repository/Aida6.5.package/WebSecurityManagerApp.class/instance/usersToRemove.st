accessing
usersToRemove
	usersToRemove isNil ifTrue: [usersToRemove := Set new].
	^usersToRemove