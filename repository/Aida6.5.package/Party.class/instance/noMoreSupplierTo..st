roles-specific
noMoreSupplierTo: aParty 
	"no more a supplier to related party"
	(self isSupplierTo: aParty) ifFalse: [^nil].
	self discontinueRole:
		(self roles detect: [:role | role relatedParty == aParty and: [role isSupplierRole] ] ifNone: [^nil])