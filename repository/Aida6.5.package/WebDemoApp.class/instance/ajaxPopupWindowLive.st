views-ajax
ajaxPopupWindowLive
	| e |
	e := WebElement new.
	self context event isClassicalRequest ifTrue: [^e]. "because this method is also called while building 
		 										    main page in #ajaxPopupWindowExample"
	e addTextH1: 'Popup window with live content from server'. e addBreak.
	e addText: 'Timestamp now: ',  SpTimestamp now printString; addBreak; addBreak.
	(e addNilLinkText: 'popup one more')
		onClickPopup: self ajaxPopupWindowLive2 thenUpdate: e. "to refresh time"
	e addText: ' | '.
	e addCloseLinkText: 'close'.   "closing link, via Ajax closes also the window and context on the server"
	^e