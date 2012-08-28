accessing
form
	"form to which belongs (or it will be) this element. it can be form on a page, popup window or widget"
	| form appOrWidget |
	self parent notNil ifTrue: 
		[form := self parent form. form notNil ifTrue: [^form] ].
	self creationObject notNil ifTrue: 
		[^self creationObject isWebWidget 
			ifTrue: [self creationObject form]	
			ifFalse: [self context form] ].
	appOrWidget := self firstWidgetOrAppFromStack.
	^(appOrWidget notNil and: [appOrWidget isWebWidget])
		ifTrue: [appOrWidget form]
		ifFalse: [self context form]