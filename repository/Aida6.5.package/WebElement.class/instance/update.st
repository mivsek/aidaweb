events-ajax
update
	"recreate that element on app or widget and send to the browser to update itself there too"
	| new ctx |
	self canUpdate ifFalse: [self error: 'Only WebElements (not subclasses) can be updated'].
	self creationMethod isNil ifTrue: [^self]. "in form elements it will return new value!"
	self id isNil ifTrue: [self error: 'web element to update must have id in advance, use #ensureId !'].
	('view*' match: self creationMethod asString) ifTrue: 
		[^self error: 'Cannot update views! View in question: #', self creationMethod].
	ctx := self context.
	ctx announceReplacementWith: self.
	new := (self creationMethod asString last = $: )
		ifTrue: [self creationObject perform: self creationMethod with: self updateArgument ]  "object method: parm"
		ifFalse: [self updateArgument notNil  "try to call the method with that argument anyway"
			ifTrue: [self creationObject perform: (self creationMethod, ':') asSymbol with: self updateArgument]
			ifFalse: [self creationObject perform: self creationMethod] ].
	ctx cancelReplacement. "if not already"
	((new isKindOf: WebElement) and: [new canUpdate]) ifFalse: [self error: 'New is not a web element!'].
	new id isNil ifTrue: [self error: 'does creation method return created object?'].
	new registerFormElements.
	new prepareToHtmlStreamingOn: self session. "to prepare again"
	new afterCloseUpdate: self afterCloseUpdate. "if any, to signal for later update, after window close for instance"
	new eventHandlers: self eventHandlers.  "preserve handlers through updates"
	self shallQueue ifTrue:  "for popups queuing happens later after wrap in popup window"
		[self session queueUpdateElement: new]. "send immediatelly via WebSocket if open, or in Ajax response"
	^new