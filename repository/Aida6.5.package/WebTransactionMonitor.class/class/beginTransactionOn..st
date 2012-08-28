transactions
beginTransactionOn: aProcess

	"Mark the beginning of transaction. Mark the end with commit or cancelTransaction"

	self critical: 
		[self transactions add: aProcess]