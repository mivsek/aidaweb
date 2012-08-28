views-ajax
ajaxPeriodicUpdaterExample
	| e element |
	e := WebElement new.
	e addTextH4: 'Periodicaly update element from server'.
	element := self ajaxTimeElement.
	element updateEverySeconds: 1.
	e add: element.
	^e