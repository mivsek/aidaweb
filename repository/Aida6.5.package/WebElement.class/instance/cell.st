tables
cell
	"return a current table cell"
	self initTableIfNessesary.
	^self otherAt: #currentCell