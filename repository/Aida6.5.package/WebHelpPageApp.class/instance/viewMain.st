views
viewMain
	| e |
	e := WebElement new.
	e table width: 1 "100%".
	e cell addTextH1: 'Help: ', self observee title. e newRow.
	self canBeEdited ifTrue: [e cell addButtonText: 'Edit' action: #edit. e newRow].
	e cell addText: self observee body "asWikiLinksOnlyHtml".
	self style pageFrameWith: e title: self title