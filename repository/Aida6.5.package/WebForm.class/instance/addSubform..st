private
addSubform: aWebForm
	subforms isNil ifTrue: [self initSubforms].
	(subforms includes: aWebForm) ifTrue: [^nil].
	subforms copy do: [:form | 
		form parent == aWebForm parent ifTrue:  "parent was updated/recreated, old form discarded"
			[self removeSubform: form] ].
	subforms add: aWebForm.
	aWebForm superform: self