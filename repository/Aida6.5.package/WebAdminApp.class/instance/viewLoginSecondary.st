views
viewLoginSecondary
	"this one is called if preloginCheck returns false. Usefull for prelogin error reporting etc.
	Byy thefault it returns error report in red. Override that by your wishes"
	| e |
	self title: self style loginTitle.
	e := WebElement new.
	self showError: self style loginErrorTextSecondary.
	e add: self errorReport.
 	^self style pageFrameWith: e title: self title .