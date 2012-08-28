executing
executeRequest: aRequest
	self checkProcessState. "and init processes if deadlocked or something. TEMPORARY! "
	aRequest context: self. self event: aRequest. "to be sure!"
	self signal "to wakeup the process which will execute it, see #processLoop"