roles - specific
becomeDeputyOf: aPerson
	| role |
	(self isDeputyOf: aPerson) ifTrue: [^false].
	role := DeputyRole new.
	role name: 'deputy role'.
	self newRole: role relatedTo: aPerson.