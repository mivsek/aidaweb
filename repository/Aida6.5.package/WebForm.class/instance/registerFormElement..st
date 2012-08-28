model adapting
registerFormElement: aFormElement
	"register (add to fields and set model adaptor) element to this form"
	aFormElement isFormElement ifFalse: [self error: 'not a form element!'].
	(self alreadyRegistered: aFormElement) ifTrue: [^nil]. 
	aFormElement hasName ifFalse:
		[aFormElement name: 'field', (self topFormOnPage nextFieldNumber) printString].
	self addToFields: aFormElement. 
	(aFormElement isRadioButton | aFormElement isCheckBox)
		ifTrue: [aFormElement joinToForm: self]
		ifFalse:	["aWebFormElement adapt" "not needed anymore!"]