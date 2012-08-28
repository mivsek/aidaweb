accessing-parent
allParentJobRoles
	^self parent allOrgUnits
		inject: OrderedCollection new into: [:col :each | col addAll: each allJobRoles; yourself]