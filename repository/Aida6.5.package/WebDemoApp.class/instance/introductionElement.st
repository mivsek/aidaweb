views
introductionElement
	| e |
	e := WebElement new.
	e addText: self observee introduction. "see WebDemo>>defaultIntroductionText for initial content"
	^e