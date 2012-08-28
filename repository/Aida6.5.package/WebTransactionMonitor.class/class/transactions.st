private
transactions

	"a collection of all processes with open transactions . Such a process is 
	addded with method beginTransaction and removed with commit or cancelTransaction"
	"WebTransactionMonitor transactions"
	Transactions isNil ifTrue: [self initTransactions].
	^Transactions