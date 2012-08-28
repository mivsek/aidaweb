roles-basic
discontinueRoleNamed: aString
	| r |
	r := self roleNamed: aString.
	r notNil ifTrue: [self discontinueRole: r]