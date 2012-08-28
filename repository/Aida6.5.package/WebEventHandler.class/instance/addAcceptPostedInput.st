actions
addAcceptPostedInput
	"event is a post of form element input, accept it"
	^self addActionBlock: [:receivedEvent || field |
		field := receivedEvent element.
		field acceptInputFromValue: receivedEvent value.
		field announceChange.
		(field isSingleFieldPost and: [field isValid])
			ifTrue: [field save] ] "otherwise save at complete form submit"