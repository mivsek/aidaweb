roles - specific
becomeEmployeeOf: aParty 
	"I become an employee of that party"
	| role |
	(self isEmployeeOf: aParty) ifTrue: [^false].
	role := EmployeeRole new.
	role name: 'employee role'.
	self newRole: role relatedTo: aParty.

	self noMoreFormerEmployeeOf: aParty "if it was former before"