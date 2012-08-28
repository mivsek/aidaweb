initialize-release
initialize
	super initialize.
	WebTransactionMonitor addServer: self.
	self initDefaultSettings.
	self initDemoOnRootUrl. 
	self initFavicon.
	self initScheduledTasks.
	WebTransactionMonitor commit.