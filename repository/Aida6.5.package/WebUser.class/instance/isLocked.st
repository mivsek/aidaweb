testing
isLocked
	"change or delete of this user data not allowed"
	^self otherAt: #Locked ifAbsent: [false]