actions-control flow
actionControlFlowDelete
	"tree-like control flow in action! "
	(self ask: (WebDialog newConfirm text: 'Delete?') )
		ifTrue: [self observee delete]