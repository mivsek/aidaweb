security-login
loginUserNamed: aUsernameString withPassword: aPasswordString 
	"will fail if username or password wrong!"
	| usr |
	usr := self site securityManager userNamed: aUsernameString withPassword: aPasswordString.
	usr isNil ifTrue: [self error: 'User withat username/password combination does not exist'].
	self loginUser: usr