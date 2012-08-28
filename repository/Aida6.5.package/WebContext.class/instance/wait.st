private-process
wait
	"a process will be interrupted here until the next signal come"
	self setInterruptedState.
	self initSemaphore. "otherwise it doesn't wait, why?"
	self semaphore wait.
	self setExecutingState.