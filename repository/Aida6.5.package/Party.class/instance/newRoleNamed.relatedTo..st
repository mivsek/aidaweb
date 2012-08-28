roles-basic
newRoleNamed: aString relatedTo: aParty
	"new role in relationship with other party"
	| new |
	(self roleNames includes: aString) ifTrue: [^self error: 'role with that name already exist'].
	new := Role new name: aString.
	self newRole: new relatedTo: aParty