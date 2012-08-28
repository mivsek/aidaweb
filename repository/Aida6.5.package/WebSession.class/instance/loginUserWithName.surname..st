security-login
loginUserWithName: aNameString surname: aSurnameString 
	| usr |
	usr := self site securityManager userWithName: aNameString surname: aSurnameString.
	usr notNil ifTrue: [self loginUser: usr]