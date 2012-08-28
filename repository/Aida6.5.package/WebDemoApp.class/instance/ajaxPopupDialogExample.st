views-ajax
ajaxPopupDialogExample
	| e |
	e := WebElement new.
	e addTextH4: 'Popup info dialog'.
	(e addNilLinkText: 'Click me for popup')
		onClickPopup: (WebDialog newInfo text: 'Just hello!').
	^e