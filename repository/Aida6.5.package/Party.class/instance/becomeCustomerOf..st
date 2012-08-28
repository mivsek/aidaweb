roles-specific
becomeCustomerOf: aParty
	"I become a customer of related party, I buy goods from this party"
	| role |
	(self isCustomerOf: aParty) ifTrue: [^false].
	role := CustomerRole new.
	role name: 'customer role'.
	self newRole: role relatedTo: aParty