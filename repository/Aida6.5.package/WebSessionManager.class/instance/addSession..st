adding-removing
addSession: aWebSession
	self site critical:
		[self sessions 
			at: aWebSession id put: aWebSession;
			at: aWebSession secureId put: aWebSession]