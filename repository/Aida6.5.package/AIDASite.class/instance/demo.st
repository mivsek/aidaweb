user services
demo
	^self userServices at: #WebDemo
		ifAbsent: 
			[self addUserService: WebDemo new named: #WebDemo.
			self register: self demo onUrl: '/demos'.
			^self demo]