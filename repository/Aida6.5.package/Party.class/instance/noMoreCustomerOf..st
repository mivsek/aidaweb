roles-specific
noMoreCustomerOf: aParty 
	"no more a customer of related party"
	(self isCustomerOf: aParty) ifFalse: [^nil].
	self discontinueRole:
		(self roles detect: [:role | role relatedParty == aParty and: [role isCustomerRole] ] ifNone: [^nil])