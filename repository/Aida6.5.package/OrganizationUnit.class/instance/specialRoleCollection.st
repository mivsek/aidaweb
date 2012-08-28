roles-special
specialRoleCollection
	"all specail roles for that and parent org.units up in to the top of hierarchy.
	sorted by the top first!"
	^(self parent notNil and: [self parent isKindOf: Party])
		ifTrue: [self parent specialRoleCollection addAll: self specialRoles; yourself]
		ifFalse: [self specialRoles]