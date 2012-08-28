system services
registration
	"a registration app for new users to register"
	^self systemServices 
		at: #Registration
		ifAbsent: 
			[self addSystemService: WebRegistrationApp "as class!" named: #Registration.
			self register: self registration onUrl: '/registration'.
			^self registration].