roles-specific
becomeSupplierTo: aParty 
	"I become a supplier to related party, I supply goods to this party"
	| role |
	(self isSupplierTo: aParty) ifTrue: [^false].
	role := SupplierRole new.
	role name: 'supplier role'.
	self newRole: role relatedTo: aParty