system services
securityManager
	^self systemServices 
		at: #SecurityManager
		ifAbsent: 
			[self 
				addSystemService: (WebSecurityManager newOn: self)
				named: #SecurityManager.
			self register: self securityManager onUrl: '/security'.
			self securityManager initialize.
			^self securityManager].