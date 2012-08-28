testing
isGuest
	"user is Guest - anonymous, not logged in"
	^self user isNil or: [self user isGuest]