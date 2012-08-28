roles-special
specialRoleNamed: aName
	^self specialRoles detect: [:each | each name = aName] ifNone: [nil]