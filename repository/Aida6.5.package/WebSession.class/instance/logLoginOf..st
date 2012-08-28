private
logLoginOf: aWebUser
	self loginHistory
		add: (Array with: #login with: aWebUser with: SpTimestamp now)
		onDate: SpDate today