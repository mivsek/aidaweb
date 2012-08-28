roles - specific
allDeputyOf
	"all persons to whom that person is deputy"
	^(self roles select: [:role | role isDeputyRole]) collect: [:each | each relatedParty]