actions
addAcceptSubmittedForm
	"event is a submit of a form, accept it"
	^self addActionBlock: [:receivedEvent || form |
		form := receivedEvent element form.
		form acceptFormInputFrom: receivedEvent.
		form isValid ifTrue: [form save].
		form allFields do: [:field | 
			field isButton ifFalse: "don't handle itself once again"
				[field handleSubmitEvent: receivedEvent] ] ]  "call #submit event blocks on all form fields "