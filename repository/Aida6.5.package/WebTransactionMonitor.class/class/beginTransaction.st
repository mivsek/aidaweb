transactions
beginTransaction

	"Mark the beginning of transaction on current process. 
	Mark the end with commit or cancelTransaction"

	self beginTransactionOn: Processor activeProcess.