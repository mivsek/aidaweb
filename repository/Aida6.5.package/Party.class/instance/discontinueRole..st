roles-basic
discontinueRole: aRole
	self roles remove: aRole ifAbsent: [].
	aRole relatedParty relatedPartyRoles remove: aRole ifAbsent: [].