adding-removing
removeSession: aWebSession
	"remove from sessions"
	self site critical:
		[self sessions 
			removeKey: aWebSession id ifAbsent: [];
			removeKey: aWebSession secureId ifAbsent: [] ].