security
accessAllowedFor: aSession
	"true if for object of that link a view is allowed. Only for object links, for plain urls access is always 	allowed"
	| app view right |
	self ooReference isNil ifTrue: [^true].
	app := self ooReference aidaWebAppFor: aSession.
	app isNil ifTrue: [^true].     "is this really good?"
	view := (self parms at: 'view' ifAbsent: [app defaultView]) asSymbol.
	right := aSession site securityManager 
		isUser: aSession user allowedTo: (app class viewRightSymbolFor: view) on: app class name.
	(right not and: [aSession adminAllowed]) ifTrue: 
		[app initAdminAccess. ^true].
	^right