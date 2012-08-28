tables
row
	"return a current table row"
	self initTableIfNessesary.
	^self otherAt: #currentRow