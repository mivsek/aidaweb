private
logLogin
	self loginHistory
		add: (Array with: #login with: SpTimestamp now)
		onDate: SpDate today