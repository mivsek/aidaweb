security-login
logout
	"Replace logged user with Guest. Remember last page to return after login again"
	| origin usr |
	self redirectLink: nil. 	self redirectOrigin: nil.
	self isLoggedIn 
		ifTrue: 
			[usr := self user. self initUser. 
			usr isEscalatedToAdmin ifTrue: [usr unEscalateFromAdmin].
			self logLogoutOf: usr. usr logLogout] 
		ifFalse: [^nil].
	origin := usr lastAppUrl. 
	(origin isNil or: [self lastRequest notNil and: [origin = self lastRequest uriString]])  ifFalse: 
		[usr logoutFromUrl: origin]. "to jump back after login"