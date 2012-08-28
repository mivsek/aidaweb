roles-basic
allRolesTo: aParty
	"return all roles I have to this party"
	^self roles select: [:each | each relatedParty == aParty]