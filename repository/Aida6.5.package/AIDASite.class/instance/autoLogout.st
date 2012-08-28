settings
autoLogout
	"logout after 15min of inactivity. default is NO! "
	^self settings at: #AutoLogout ifAbsent: [false]