system services
scheduler
	"AIDASite allInstances do: [:each | each migrateSchedulerInSystemServices] "
	self migrateSchedulerInSystemServices. "if not already"
	^self systemServices
		at: #Scheduler
		ifAbsent:
			[self
				addSystemService: (WebScheduler newOn: self)
				named: #Scheduler]