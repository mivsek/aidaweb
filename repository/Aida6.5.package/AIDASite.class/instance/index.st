user services
index
	^self userServices 
		at: #WebIndex
		ifAbsent: 
			[self addUserService: WebIndex new named: #WebIndex.
			self register: self index onUrl: '/search'.
			^self index].