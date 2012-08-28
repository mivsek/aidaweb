views-ajax
ajaxUpdateTimeExample
	| e element |
	e := WebElement new.
	e addTextH4: 'Example: Update element from server'.
	element := self ajaxTimeElement.
	e add: element; addBreak.
	(e addNilLinkText: 'Click me to update')
		onClickUpdate: element.
	^e