private-process
semaphore
	"on this semaphore the context process is waiting for child process to signal finishing its execution and 
	returning a result value"
	semaphore isNil ifTrue: [self initSemaphore].
	^semaphore