roles - specific
allOrgUnits
	"all org.units where person is member"
	^((self roles select: [:role | role isMemberRole]) collect: [:role | role relatedParty]) asSet.