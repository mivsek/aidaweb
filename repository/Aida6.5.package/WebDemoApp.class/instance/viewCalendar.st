views
viewCalendar
	| e |
	e := WebElement new.
	e addTextH1: #en->'Date input with Javascript Calendar example'.	 e addBreak.
	e addDateInputFieldAspect: #date for: self observee. e addBreak.
	self style pageFrameWith: e title: 'Calendar example'