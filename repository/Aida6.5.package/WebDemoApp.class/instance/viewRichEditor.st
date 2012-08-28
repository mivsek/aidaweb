views
viewRichEditor
	| e |
	e := WebElement new.
	e addTextH1: 'JavaScript HTML WYSIWYG Editor example'.	 e addBreak.
	e addRichEditorAspect: #content for: self observee size: 50@10. e addBreak.
	e addButtonText: 'Save'. e addBreak.
	e addTextH2: 'Result: '. e addBreak.
	e addText: self observee content.
	self style pageFrameWith: e title: 'Rich Editor example'