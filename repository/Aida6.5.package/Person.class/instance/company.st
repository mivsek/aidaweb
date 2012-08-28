roles - specific
company
	"in which he is employeed"
	| parties |
	parties :=  (self roles select: [:role | role isEmployeeRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isEmployeeRole]) 
			collect: [:each | each party]);
		yourself.
	^parties isEmpty ifTrue: [nil] ifFalse: [parties first]