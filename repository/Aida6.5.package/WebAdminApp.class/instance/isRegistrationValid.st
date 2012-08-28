testing
isRegistrationValid
	"check entry fields and set error report if not"
	| text |
	text := ''.
	(self site securityManager 
		existUserNamed: self newUser username withPassword: self newUser username)
			ifTrue: [text := text, ' User with that username and password already exist! ' ].
	text isEmpty ifTrue: 
		[self newUser username isEmpty ifTrue: [text := text, ' Username missing, '].
		self password isEmpty ifTrue: [text := text, ' Password missing, '].
		self newUser password isEmpty ifTrue: [text := text, ' Confirm password missing, '].
		((WebSecurityManager hashPassword: self password) = self newUser password)
			ifFalse: [text := text, ' Passwords not equal! '] ].
	text notEmpty ifTrue: 
		[self showError: 'Registration failed! ', text, ' Please correct errors and try again!'. ^false].
	^true