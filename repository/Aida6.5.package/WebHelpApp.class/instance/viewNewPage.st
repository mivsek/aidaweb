views
viewNewPage
	| appName viewName helpPage |
	appName := (self session lastRequest queryAt: 'app') asSymbol.
	viewName := (self session lastRequest queryAt: 'hview') asSymbol.
	helpPage := WebHelpPage newForApp: appName view: viewName parent: self observee.
	self redirectTo: helpPage view: #new.