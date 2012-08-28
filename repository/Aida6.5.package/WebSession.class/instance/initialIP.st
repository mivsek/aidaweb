accessing-other
initialIP
	"from which user came when session was created. It can change later for mobile users!"
	^self sessionIPs notEmpty 
		ifTrue: [self sessionIPs first]
		ifFalse: ['']