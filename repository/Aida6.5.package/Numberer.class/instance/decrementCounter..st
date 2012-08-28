private
decrementCounter: aSymbol
	"get next number and increment this counter"
	^self counters at: aSymbol put: (((self currentCounter: aSymbol) - 1) max: 0)