private
logLogoutOf: aWebUser
	self loginHistory 
		add: (Array with: #logout with: aWebUser with: SpTimestamp now)
		onDate: SpDate today