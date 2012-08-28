private-process
process
	"a process which executes the request in this context. It can be interrupted and handled to a process from 
	child context. In such case this process is waiting on semaphore for child process to finish and return 
	some value"
	^process