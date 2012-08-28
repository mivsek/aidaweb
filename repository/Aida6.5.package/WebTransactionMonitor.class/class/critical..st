critical sections
critical: aBlock
	"For protecting critical sections in parallel execution of web requests. Use it always
	when you do things, which cannot be disturbed by another request. Example:
		WebTransactionMonitor critical: [<a block with critical section>]. "

	^self mutex critical: aBlock.