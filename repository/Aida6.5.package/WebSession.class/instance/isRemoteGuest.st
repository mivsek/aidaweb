testing
isRemoteGuest
	"access from outside via Proxy, not yet logged in"
	^self user isGuest
		and: [self lastRequest isForwarded ]