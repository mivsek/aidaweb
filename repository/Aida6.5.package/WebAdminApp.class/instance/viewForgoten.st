views
viewForgoten
	| e f |
	self title: 'Lost Password'.
	e := WebElement new.
	e addTextH1: 'Lost Password'.
	e addText: ' Enter your username below, click Send me my password, and your password 
	will be mailed to you if you gave a valid email address when you registered. If this will not 
	work for you (for example, if you forgot your member name or didn''t enter your email address) 
	send an email to '. 
	e addLinkTo: 'info@eranova.si' text: 'Portal Administrator'.
	f := WebFieldSet newLegend: 'User details'.
	f cell addText: 'My username is: '.
	f newCell add: (WebInputField new aspect: #username for: self).
	f newRow. f newCell addButtonText: 'Send me my password'. 
	e add: f.
 	^self style pageFrameWith: e title: self title .