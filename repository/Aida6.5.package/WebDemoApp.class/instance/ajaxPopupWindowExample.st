views-ajax
ajaxPopupWindowExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Popup window with Ajax content from server'.
	(e addNilLinkText: 'Click me for popup')
		onClickPopup: self ajaxPopupWindowLive.
	^e