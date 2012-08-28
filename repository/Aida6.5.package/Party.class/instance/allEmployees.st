roles-specific
allEmployees
	"all employees of that party"
	| parties |
	parties :=  (self roles select: [:role | role isEmployeeRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isEmployeeRole]) 
			collect: [:each | each party]);
		yourself.
	^parties asSet asOrderedCollection