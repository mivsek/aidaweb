views-ajax
ajaxLiveFieldElement
	| e |
	e := WebElement new.
	e addTextBold: self observee input.
	^e