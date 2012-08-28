private
migrateSchedulerInSystemServices
	| scheduler |
	(self systemServices includesKey: #WebScheduler) ifTrue:
		[scheduler := self systemServices at: #WebScheduler.
		self systemServices at: #Scheduler put: scheduler.
		self systemServices removeKey: #WebScheduler].
