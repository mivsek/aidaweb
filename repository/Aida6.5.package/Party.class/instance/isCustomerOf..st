roles-specific
isCustomerOf: aParty

	| isCustomer |
	isCustomer := self roles contains: [:role | role relatedParty == aParty and: [role isCustomerRole] ].
	isCustomer ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == aParty and: [role isSupplierRole] ].