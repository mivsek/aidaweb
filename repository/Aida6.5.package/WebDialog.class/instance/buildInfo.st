printing
buildInfo
	self addText: self text.
	self addBreak; addBreak.
	(self addButtonText: 'Close')
		onSubmitClose.