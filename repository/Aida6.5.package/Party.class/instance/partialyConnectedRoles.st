private
partialyConnectedRoles
	"roles, which are not correctly connected to related party and back"
	"not working well yet !!! "
	| col |
	col := self roles reject: [:each | each relatedParty roles contains: [:role | role relatedParty == self] ].
	col addAll: (self relatedPartyRoles 
		reject: [:each | each relatedParty roles contains: [:role | role party == self] ]).
	^col

"Company allInstances select: [:each | each partialyConnectedRoles notEmpty]"