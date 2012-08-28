settings
autoLogout: aBoolean
	"logout after 15min of inactivity"
	(aBoolean isKindOf: Boolean) ifFalse: [self error: 'wrong argument'].
	^self settings at: #AutoLogout put: aBoolean