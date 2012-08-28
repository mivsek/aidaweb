testing
isGuest
	"all non registered visitors have the same user: a Guest"
	^self name = 'Guest' and: 
		[(self username = 'guest') 
			"& (self password = (WebSecurityManager hashPassword: 'guest'))"]