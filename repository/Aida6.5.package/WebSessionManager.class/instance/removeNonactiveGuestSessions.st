adding-removing
removeNonactiveGuestSessions
	"all guest (never logged in) sessions inactive more than one hour"
	^self allNonactiveGuestSessions do: [:each | 
		each parent == self 
			ifTrue: [each removeYourself] 
			ifFalse: [self removeSession: each] ]. "in which case?"