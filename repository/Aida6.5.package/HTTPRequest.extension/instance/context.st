*Aida
context
	"an execution context for that request"
	^self environmentAt: #context ifAbsent: [nil]