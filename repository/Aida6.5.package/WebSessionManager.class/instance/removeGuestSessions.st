adding-removing
removeGuestSessions
	"all guest (never logged in) sessions"
	^self allGuestSessions do: [:each | 
		each parent == self 
			ifTrue: [each removeYourself] 
			ifFalse: [self removeSession: each] ]. "in which case?"