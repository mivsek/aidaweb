accessing-timestamps
registeredTimestamp
	"when this user was registered (personally or by someone else)"
	^self otherAt: #RegisteredTimestamp ifAbsent: [nil]