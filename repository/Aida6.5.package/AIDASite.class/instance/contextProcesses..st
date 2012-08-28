settings
contextProcesses: aBoolean
	"if true, web contexts execute POSTs and Ajax requests in a separate process, to enable tree-like control flow"
	(aBoolean isKindOf: Boolean) ifFalse: [self error: 'wrong argument'].
	self settings  at: #contextProcesses put: aBoolean.