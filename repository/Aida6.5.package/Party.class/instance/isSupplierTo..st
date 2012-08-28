roles-specific
isSupplierTo: aParty

	| isSupplier |
	isSupplier := self roles contains: [:role | role relatedParty == aParty and: [role isSupplierRole] ].
	isSupplier ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == aParty and: [role isCustomerRole] ].