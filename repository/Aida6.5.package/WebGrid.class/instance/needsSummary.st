private-testing
needsSummary
	"summary row needed or not"
	^self columns contains: [:each | each needsSummary].