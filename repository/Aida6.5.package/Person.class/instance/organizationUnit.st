roles - specific
organizationUnit
	"in which he is a member"
	| parties |
	parties :=  (self roles select: [:role | role isMemberRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isMemberRole]) 
			collect: [:each | each party]);
		yourself.
	^parties isEmpty ifTrue: [nil] ifFalse: [parties first]