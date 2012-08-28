printing
buildConfirmation
	self addText: self text.
	self addBreak; addBreak.
	(self addButtonText: 'YES')
		class: #'dialog-button';
		onSubmitAnswer: true;
		onSubmitClose.
	self addSpace.
	(self addButtonText: 'NO')
		class: #'dialog-button';
		onSubmitAnswer: false;
		onSubmitClose.