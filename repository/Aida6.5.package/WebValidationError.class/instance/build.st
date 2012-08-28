printing
build
	| text |
	self class: #validationError.	"CSS"	"red background etc. See DefaultWebStyle>>css231Validation"
	(self origin isNil or: [self origin isValid]) ifFalse:
		[text := self origin errorText trimBlanks.
		text isEmpty ifTrue: [text := 'Error!'].
		self addText: text]