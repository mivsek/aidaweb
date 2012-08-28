transactions
commitTransactionOn: aProcess

	"commit the transaction if there is no more pending transactions, otherwise defer commit to
	the next call of this method."

	self critical: 
		[self cancelTransactionOn: aProcess.
		self commit].