views-ajax
ajaxPopupWindowLive2
	| e |
	e := WebElement new.
	e addText: SpTimestamp now printString; addBreak.
	e addCloseLinkText: 'close'.   "closing link"
	e addText: ' or '.
	(e addButtonText: 'Close')
		onSubmitClose.
	^e