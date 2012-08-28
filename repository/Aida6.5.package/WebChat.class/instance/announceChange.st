changes
announceChange
	self announcers associations do: [:assoc |
		assoc key "app" isActive 
			ifTrue: [assoc value value]
			ifFalse: [self announcers removeKey: assoc key] ] "self cleanup of released application state"