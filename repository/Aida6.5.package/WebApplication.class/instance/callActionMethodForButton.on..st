private-form posting
callActionMethodForButton: aButton on: aContext
	"name of button pressed is in argument"
	| methd |
	methd := self class actionMethodForView: aContext view button: aButton. 
	methd notNil 
		ifTrue: [self perform: methd asSymbol]
		ifFalse: [self reportMissingActionMethodIfNeeded].
	self announceAction: aButton action onView: aContext view