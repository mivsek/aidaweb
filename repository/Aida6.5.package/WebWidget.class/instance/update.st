events-actions
update
	"update (recreate or refresh) that widget by returning a recreated one"
	| superform new |
	superform := self form superform.
	superform notNil ifTrue: 
		[superform removeSubform: self form.
		superform isTopForm ifTrue: [self parent: nil] ]. "probably from previous popup with now nonexistent context"
	self context cancelReplacement. "widget is rebuilt, not replaced with new instance!"
	new := (self creationMethod asString last = $: )
		ifTrue: [self creationObject perform: self creationMethod with: self updateArgument] 
		ifFalse: [self updateArgument notNil  "try to call the method with that argument"
			ifTrue: [self creationObject perform: (self creationMethod, ':') asSymbol with: self updateArgument]
			ifFalse: [self creationObject perform: self creationMethod] ].
	superform notNil ifTrue: 
		[superform isTopForm ifTrue: [superform := self context window form]. "new popup context!"
		superform addSubform: new form].
	self session queueUpdateElement: new. "to be sent immediatelly via WebSocket if open, or in Ajax response"
	^new