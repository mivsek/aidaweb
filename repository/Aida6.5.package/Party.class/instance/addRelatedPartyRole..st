private
addRelatedPartyRole: aRole
	(self relatedPartyRoles includes: aRole) ifTrue: [^nil].
	self relatedPartyRoles add: aRole.