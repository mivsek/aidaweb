roles - specific
allDeputies
	"all deputies of that person"
	^(self relatedPartyRoles select: [:role | role isDeputyRole]) collect: [:each | each party]