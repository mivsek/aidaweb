private-process
checkProcessState
	"this is temporary, it must be improved! "
	"called from #executeRequest: to check if process is in a state to be closed and initialized instead"
	self isInterrupted ifTrue: 
		[self isLast not ifTrue: [self child close].
		self stopProcess; startProcess].