private-ids
registeredSet
	^self ids at: #setOfRegisteredElements ifAbsent: [self initRegisteredSet]