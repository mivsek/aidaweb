system services
sessionManager
	^self systemServices 
		at: #SessionManager
		ifAbsent: 
			[self 
				addSystemService: (WebSessionManager newOn: self)
				named: #SessionManager.
			^self sessionManager].