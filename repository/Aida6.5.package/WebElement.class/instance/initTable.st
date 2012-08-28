initialize-release
initTable
	"just remove from other, later will be initalized lazily"
	self other isNil ifTrue: [^nil].
	self other 
		removeKey: #currentTable ifAbsent: [];
		removeKey: #currentRow ifAbsent: [];
		removeKey: #currentCell ifAbsent: [].