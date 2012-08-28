transactions
clearHangedProcesses

	"remove all processes with hanged  suspended context from set of transactions. "
	"WebTransactionMonitor clearHangedProcesses"
" TEMORARY, vw5i4 sender unknown ! "
	self transactions copy do: 
		[:each | (each suspendedContext notNil and:
""
			[(each suspendedContext sender selector = #readWait) | 
			(each suspendedContext sender selector = #writeWait)] )
""
				ifTrue:
					[each terminate.
					self transactions remove: each] ].
""