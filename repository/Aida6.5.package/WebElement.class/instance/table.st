tables
table
	"return a current web table. If not yet exist, create it"
	self initTableIfNessesary.
	^self otherAt: #currentTable