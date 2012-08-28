views-ajax
ajaxDelayedFieldElement
	| e |
	e := WebElement new.
	e addTextBold: self observee delayedInput.
	^e