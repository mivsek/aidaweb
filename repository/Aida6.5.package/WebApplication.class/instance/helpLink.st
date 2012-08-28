private-composing
helpLink
	"link to help page for current view and App. If not exist, then nothing, exept for 
	admin - link to creation of new help page"
	| link viewName |
	self class == WebHelpPageApp ifTrue: [^WebElement new].
	viewName := self inDefaultView ifTrue: ['main'] ifFalse: [self view asString].
	link := WebLink newClass: #helpLink.
	(self site help existApp: self view: viewName)
		ifTrue: [link text: ('<b>', self style helpText, '</b>') 
			linkTo: (self site help forApp: self view: viewName)]
		ifFalse: [self user hasAdminRights
			ifTrue: [link text: '<b>', self style addHelpText, '</b>' linkTo: self site help; view: 'newPage'; 
				parameter: 'app' value: self class name asString;
				parameter: 'hview' value: viewName]
			ifFalse: [^WebElement new] ].
	^link