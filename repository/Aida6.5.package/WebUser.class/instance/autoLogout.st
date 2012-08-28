accessing-other
autoLogout
	"logout after 15min of inactivity. default is NO! "
	^self otherAt: #AutoLogout ifAbsent: [false]