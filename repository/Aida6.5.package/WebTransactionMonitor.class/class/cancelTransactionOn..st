transactions
cancelTransactionOn: aProcess

	"cancel the transaction without commiting. Used in exception handling routines"

	self critical: 
		[self transactions remove: aProcess ifAbsent: []].