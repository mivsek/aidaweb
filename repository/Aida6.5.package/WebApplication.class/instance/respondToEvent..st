private-ajax
respondToEvent: aWebEvent
	"this method is here just to have an App in the stack, because 'climbing of the stack' methods"
	| ctx e |
	aWebEvent element isWindowPopupRequested
		ifTrue: 
			[ctx := aWebEvent context createNewContext. "is also added to context chain and also to this app"
			aWebEvent context: ctx. "switch to a new context during the rest of execution"
			ctx event: aWebEvent.
			e := aWebEvent element handleEvent: aWebEvent. 
			e creationContext: ctx.  "change the default to the popup one"
			e := self wrap: e intoPopupWindow: ctx window. "e is now window with wrapped element"
			self session queueUpdateElement: e]
		ifFalse: 
			[aWebEvent element handleEvent: aWebEvent]