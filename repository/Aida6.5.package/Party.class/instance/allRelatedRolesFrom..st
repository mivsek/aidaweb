roles-basic
allRelatedRolesFrom: aParty
	"return all roles this party has to me"
	^self relatedPartyRoles select: [:each | each party == aParty]