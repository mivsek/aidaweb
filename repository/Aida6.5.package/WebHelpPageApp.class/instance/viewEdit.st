views
viewEdit
	| e |
	e := WebElement new.
	e cell addTextH4: 'Help page for ', self observee app asString, ', view #', self observee view. 
	e newRow.
	e cell addText: 'Title'; addBreak; 
		addInputFieldAspect: #title for: self observee size: 79. e newRow.
	e cell addText: 'Contents'; addBreak; 
		addRichEditorAspect: #body for: self observee size: 80@20. e newRow.
	e cell addButtonText: 'Save help page'.
	self style pageFrameWith: e title: self title