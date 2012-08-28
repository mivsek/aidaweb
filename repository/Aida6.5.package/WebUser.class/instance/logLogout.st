private
logLogout
	self loginHistory 
		add: (Array with: #logout with: SpTimestamp now)
		onDate: SpDate today