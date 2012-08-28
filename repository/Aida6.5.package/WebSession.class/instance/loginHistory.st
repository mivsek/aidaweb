accessing-other
loginHistory
	"occurences of user logged it/out. As DailyCollection of Array #login/logout, WebUser, timestamp"
	^self otherAt: #LoginHistory ifAbsent: [self initLoginHistory]