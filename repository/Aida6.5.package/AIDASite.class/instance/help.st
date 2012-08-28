system services
help
	^self systemServices 
		at: #Help
		ifAbsent: 
			[self addSystemService: (WebHelp new) named: #Help.
			self register: self help onUrl: '/help'.
			^self help].