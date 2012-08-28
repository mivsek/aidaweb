private-process
stopProcess
	self process isNil ifTrue: [^nil].
	self process terminate.
	self process: nil; semaphore: nil.
	self setNoProcessState