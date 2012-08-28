initialize-release
initTableIfNessesary
	"if not already exist"
	self otherAt: #currentTable ifAbsent: [self newTable]