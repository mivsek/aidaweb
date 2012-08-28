views-elements
stateElementFor: aSession
	| e stateText |
	e := WebElement new.
	stateText := aSession loginStateText.
	stateText = 'login' ifFalse: 
		[e addText: stateText. 
		^e].
	(e addNilLinkText: 'login')
		title: 'Click to logout';
		onClickDo: [aSession logout];
		onClickUpdate: e with: aSession.
	^e