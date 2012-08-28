private-process
mainSemaphore
	"main process is waiting on this semaphire for context's process to signaling back the finishment"
	mainSemaphore isNil ifTrue: [self initMainSemaphore].
	^mainSemaphore