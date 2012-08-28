private
registerIP
	"add IP address of user's computer to the list, if not there already"	
	| ip |
	self lastRequest isNil ifTrue: [^nil].
	ip := self lastRequest peer.
	self initialIP = ip ifFalse:   "new session or session from new IP (like mobile user)"
		[(self sessionIPs contains: [:existing | existing = ip])
			ifFalse: [self sessionIPs add: ip] ]