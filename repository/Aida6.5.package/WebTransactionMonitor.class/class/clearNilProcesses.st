transactions
clearNilProcesses

	"remove all processes with nil  suspended context from set of transactions. Such processes
	died somewhere and were not removed with method cancelTransaction"

	self transactions copy do: 
		[:each | each suspendedContext isNil 
			ifTrue:
				[self transactions remove: each] ].