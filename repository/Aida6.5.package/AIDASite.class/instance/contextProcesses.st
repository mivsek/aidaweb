settings
contextProcesses
	"if true, web contexts execute POSTs and Ajax requests in a separate process, to enable tree-like control flow"
	^self settings at: #contextProcesses ifAbsentPut: [false].