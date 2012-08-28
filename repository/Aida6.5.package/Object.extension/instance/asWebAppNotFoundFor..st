*Aida
asWebAppNotFoundFor: aSession 
	| page |
	page := WebPage new.
	page addText: 'Cannot find aWebApplication for object a', self class name.
	^page