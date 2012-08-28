transactions
cancelTransaction

	"cancel the transaction without commiting on current process. 
	Used in exception handling routines"

	self cancelTransactionOn: Processor activeProcess