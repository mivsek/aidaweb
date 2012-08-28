views-control flow
flowConfirmDeleteExample
	"see #actionControlFlowDelete for actual control flow example"
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Delete with confirmation dialog'.
	self observee deleted not
		ifTrue: 
			[(e addButtonText: 'Delete' action: #delete) "then see #actionControlFlowDelete ! "
			"	onSubmitUpdate: e"]  "later!"
		ifFalse: 
			[e addTextBold: 'Deleted!'; addSpace; addButtonText: 'Reset delete' action: #reset].
	^e