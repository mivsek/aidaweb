private-process
startProcess
	self process notNil ifTrue: [^nil].
	self process: ([self processLoop] forkAt: self processPriority)