testing
isLocked
	"change or delete this group not allowed"
	^self otherAt: #Locked ifAbsent: [false]