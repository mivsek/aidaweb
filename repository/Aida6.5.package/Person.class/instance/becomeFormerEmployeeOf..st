roles - specific
becomeFormerEmployeeOf: aParty 
	"I become an employee of that party"
	| role |
	(self isFormerEmployeeOf: aParty) ifTrue: [^false].
	role := FormerEmployeeRole new.
	role name: 'former employee role'.
	self newRole: role relatedTo: aParty