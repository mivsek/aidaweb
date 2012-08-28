roles-basic
newRole: aRole relatedTo: aParty
	"new role in relationship with other party"

	aRole party: self.
	aRole relatedParty: aParty.
	self addRole: aRole.
	aParty addRelatedPartyRole: aRole.