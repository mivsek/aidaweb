accessing-other
setLocked
	"changes of user data not allowed"
	^self otherAt: #Locked put: true