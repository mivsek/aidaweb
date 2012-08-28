views
linesElement
	| e  |
	e:= WebElement newDiv.
	self observee last4Lines do: [:line |
		e addNbSp: 4; addText: line.
		e addBreak].
	^e