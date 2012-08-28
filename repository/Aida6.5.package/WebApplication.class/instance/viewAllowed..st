private-security
viewAllowed: aViewSymbol
	"check if page view is allowed to this observee object with specified view"
	"admin logon page always allowed"
	"reregister rights for admin if denial is encountered "
	| right |
	(self observee = self site admin) & (aViewSymbol = #login) ifTrue: [^true].
	 right := self site securityManager 
		isUser: self user allowedTo: (self class viewRightSymbolFor: aViewSymbol)
		on: self class name.
	(right not and: [self session adminAllowed]) ifTrue: 
		[self initAdminAccess. ^true].
	^right