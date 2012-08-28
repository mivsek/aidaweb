roles-specific
allSuppliers
	"return all parties which supply goods to me, therefore I am a customer of them"
	| parties |
	parties :=  (self roles select: [:role | role isCustomerRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isSupplierRole]) 
			collect: [:each | each party]); 
		yourself.
	^parties asSet asOrderedCollection