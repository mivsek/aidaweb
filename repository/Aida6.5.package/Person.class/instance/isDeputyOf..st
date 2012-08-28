roles - testing
isDeputyOf: aPerson
	^self roles contains: [:role | role relatedParty == aPerson and: [role isDeputyRole] ].