roles-specific
relatedParty
	"which party is the 'owner', e.g. doing business in elogis terms with that party"

	| thirdPLCustomers parties |
	thirdPLCustomers := LogisticSystem default owner all3PLCustomers.
	parties := thirdPLCustomers select: [:party | party isSupplierTo: self].
	^parties isEmpty 
		ifTrue: 
			[parties := thirdPLCustomers select: [:party | party isCustomerOf: self].
			parties isEmpty ifTrue: [^nil] ifFalse: [parties first] ]
		ifFalse: [parties first]