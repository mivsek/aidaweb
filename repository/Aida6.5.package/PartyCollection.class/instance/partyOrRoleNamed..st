accessing
partyOrRoleNamed: aString
	^self parties detect: [:each | each nameToDisplay = aString] ifNone: [nil].