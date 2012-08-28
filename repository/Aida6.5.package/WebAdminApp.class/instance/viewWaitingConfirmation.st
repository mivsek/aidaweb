views
viewWaitingConfirmation
	| e |
	self title: 'Waiting Confirmation'.
	e := WebElement new.
	e addTextH1: 'Waiting Confirmation'.
	e addText: 'And e-mail was sent to address you entered in a registration form. Please read it
	and click to the activation link to confirm that your e-mail is valid.
	If you have any problems send an email to '. 
	e addLinkTo: 'info@eranova.si' text: 'Portal Administrator'.
 	^self style pageFrameWith: e title: self title .