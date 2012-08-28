accessing
groupsToRemove
	groupsToRemove isNil ifTrue: [groupsToRemove := Set new].
	^groupsToRemove