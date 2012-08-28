actions
actionUpdateSettings
	[(Delay forMilliseconds: 500) wait.
	self site stop.
	self updateSettings.
	self site start] fork.
	self redirectToView: #redirect