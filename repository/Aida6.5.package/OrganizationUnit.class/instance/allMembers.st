roles-specific
allMembers
	"all members of that org.unit"
	| parties |
	parties :=  (self roles select: [:role | role isMemberRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isMemberRole]) 
			collect: [:each | each party]);
		yourself.
	^parties asSet asOrderedCollection