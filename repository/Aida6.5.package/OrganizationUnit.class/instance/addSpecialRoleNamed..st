roles-special
addSpecialRoleNamed: aName
	(self existSpecialRoleNamed: aName) ifFalse:
		[self specialRoles add: (Role new name: aName)]