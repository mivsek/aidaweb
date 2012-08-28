accessing
roles
	roles isNil ifTrue: [self initRoles].
	^roles