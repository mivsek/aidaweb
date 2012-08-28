testing
isLoggedIn
	^self user notNil and: [self user isGuest not]