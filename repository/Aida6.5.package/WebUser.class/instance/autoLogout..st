accessing-other
autoLogout: aBoolean
	"logout after 15min of inactivity"
	^self otherAt: #AutoLogout put: aBoolean