views-widgets
widgetPopupExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Widget popup example'.
	e addTextSmall: 'Updated: ', Time now printString. e addBreak.
	(e addNilLinkText: 'Click to popup')
		onClickPopup: WebDemoWidget new.
	e addText: ' | '.
	(e addNilLinkText: 'Popup then update')
		onClickPopup: WebDemoWidget new thenUpdate: e.
	e addText: ' | '.
	(e addNilLinkText: 'Click to popup composed widget')
		onClickPopup: WebDemoWidget2 new.

	^e