views
chatElement
	| e le |
	e := WebElement newDiv.
	e addTextH1: 'Multi-user Chat'.
	le := self linesElement.
	e add: le;  addBreak.
	(e addInputFieldAspect: #line for: self) focus.
	(e addButtonText: 'Send')
		onSubmitDo:   "Ajax submit then execute this block"
			[self observee addLine: self line. self line: ''.
			e update].  "update lines and input field"
	self observee whenChangedDo: [le update] on: self.
	^e