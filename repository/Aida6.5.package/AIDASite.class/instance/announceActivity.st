private-serving
announceActivity
	"announce only if more than a second from last announcement"
	(self lastRequestTimestamp notNil and:
		[self lastRequestTimestamp asSeconds = SpTimestamp now asSeconds]) ifTrue: [^nil]. 
	self activityAnnouncers associations do: [:assoc |
		assoc key "app" isActive 
			ifTrue: [assoc value values do: [:block | block value] ]
			ifFalse: [self activityAnnouncers removeKey: assoc key] ] "auto cleanup of released application state"