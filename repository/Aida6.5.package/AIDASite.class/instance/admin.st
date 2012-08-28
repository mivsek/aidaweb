system services
admin
	^self systemServices 
		at: #Admin
		ifAbsent: 
			[self addSystemService: (WebAdmin new) named: #Admin.
			self register: self admin onUrl: '/admin'.
			^self admin].