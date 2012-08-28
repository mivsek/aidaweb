roles-specific
allCustomers
	"return all parties which are my customers, therefore I am a supplier to them"
	| parties |
	parties :=  (self roles select: [:role | role isSupplierRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isCustomerRole]) 
			collect: [:each | each party]);
		yourself.
	^parties asSet asOrderedCollection