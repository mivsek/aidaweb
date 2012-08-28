private-fields
addToFields: aWebFormElement
	"and to tab order"
	(self alreadyRegistered: aWebFormElement) ifTrue: [^self error: 'already exist!'].
	self fields at: aWebFormElement name put: aWebFormElement.
	self tabOrder add: aWebFormElement.
	aWebFormElement isStreamed ifTrue: [self streamedFieldSet add: aWebFormElement].
	^self fieldSet add: aWebFormElement