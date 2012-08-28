views
viewPasswordSent
	| e |
	self title: 'Lost Password sent'.
	e := WebElement new.
	e addTextH1: 'Password sent'.
	e addText: ' Your password was sent to email address from your user profile. If you have 
      any more troble, please send an email to '. 
	e addLinkTo: 'info@eranova.si' text: 'Portal Administrator'.
 	^self style pageFrameWith: e title: self title .