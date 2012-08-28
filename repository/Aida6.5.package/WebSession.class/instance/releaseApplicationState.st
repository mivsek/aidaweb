releasing state
releaseApplicationState
	self removeAppsForObjects.
	self nilLastRequest.
	self nilLastApp.
	self initQueue.
	self initRequests.
	self initClipboard.
	self redirectLink: nil; redirectOrigin: nil.
	self realtimeHandler removeAll