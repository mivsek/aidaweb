transactions
commitTransaction

	"commit the transaction on current process if there is no more pending transactions, 
	otherwise defer commit to the next call of this method."

	self commitTransactionOn: Processor activeProcess