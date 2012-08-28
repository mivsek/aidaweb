private-events
handleSubmitEvent: aWebEvent
	"if there is some onSubmit action registered from that form element. Called after whole form is submitted"
	| handler |
	handler := self eventHandlerFor: #submit.
	handler isNil ifTrue: [^nil].
	^handler handleEvent: aWebEvent