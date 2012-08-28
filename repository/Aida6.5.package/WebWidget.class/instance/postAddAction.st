private
postAddAction
	| sform c |
	sform := (self parent notNil and: [self parent creationObject notNil])
		ifTrue: [self parent form]
		ifFalse: 
			[c := (self widgetsAndAppsFromStack at: 2). "skip first because it is this widget"
			c isWebWidget ifTrue: [c form] ifFalse: [self context form] ].
	sform addSubform: self form.