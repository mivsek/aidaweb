accessing-parent
parentPartyOrRoleNamed: aString
	(aString isNil or: [aString isEmpty]) ifTrue: [^nil].
	^self allParentOrgUnitsRolesPersons detect: [:each | each nameToDisplay = aString] ifNone: [nil].