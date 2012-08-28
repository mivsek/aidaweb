system services
urlResolver
	^self systemServices 
		at: #URLResolver
		ifAbsent: 
			[self 
				addSystemService: (URLResolver newOn: self) 
				named: #URLResolver.
			^self urlResolver].