accessing-other
resetLocked
	"changes of user data allowed again"
	^self otherAt: #Locked put: false