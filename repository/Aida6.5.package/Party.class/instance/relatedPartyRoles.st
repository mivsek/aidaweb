accessing
relatedPartyRoles
	relatedPartyRoles isNil ifTrue: [self initRelatedPartyRoles].
	^relatedPartyRoles