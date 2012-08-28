printing
viewMain
	self redirectToView: #users
"
	| e |
	self title: #en-> 'Security management'.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title;
		addBreak;
		addLinkTo: self observee text: #en-> ' Users ' view: 'users';
		addText: ' (',self observee allUsers size printDotString,')';
		addBreak;
		addLinkTo: self observee text: #en-> ' Groups ' view: 'groups';
		addText: ' (',self observee allGroups size printDotString,')'.
	self style pageFrameWith: e title: self title
"