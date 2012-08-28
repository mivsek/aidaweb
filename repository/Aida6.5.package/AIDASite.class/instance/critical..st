accessing
critical: aBlock

	"For protecting critical sections in parallel execution of web requests. Use it always
	when you do things, which cannot be disturbed by another request. Exmaple:
		aServer critical: [<a block with critical section>]. "

	^WebTransactionMonitor critical: aBlock