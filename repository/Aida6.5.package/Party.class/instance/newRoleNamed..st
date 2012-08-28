roles-basic
newRoleNamed: aString
	"new role, but not in relationship with anyone"
	| new |
	(self roleNames includes: aString) ifTrue: [^self error: 'role with that name already exist'].
	new := Role new name: aString.
	self newRole: new