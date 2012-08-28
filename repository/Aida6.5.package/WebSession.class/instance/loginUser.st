accessing
loginUser
	"user logged now or in a past"
	(self isGuest and: [self neverLoggedIn]) ifTrue: [^nil].
	self isLoggedIn ifTrue: [^self user].
	^self loginHistory all first at: 2