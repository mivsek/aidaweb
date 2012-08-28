roles - specific
specialRoleCollection
	"a set of additional roles by person's org.unit and org.hierarch up to the top"
	^self organizationUnit notNil
		ifTrue: [self organizationUnit specialRoleCollection]
		ifFalse: [self company notNil
			ifTrue: [self company specialRoleCollection]
			ifFalse: [OrderedCollection new] ].