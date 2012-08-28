accessing
allNonactiveGuestSessions
	"guest sessions nonactive more that one hour"
	^self allGuestSessions select: [:each | each isActive not].