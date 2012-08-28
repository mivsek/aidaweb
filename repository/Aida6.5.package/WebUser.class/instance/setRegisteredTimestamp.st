private
setRegisteredTimestamp
	"when this user was registered (personally or by someone else)"
	^self otherAt: #RegisteredTimestamp put: SpTimestamp now