private-security
updateAllowed: aViewSymbol
	"check if update is allowed to this observee object with specified view"
	"update for admin login page is always allowed"
	"reregister rights for admin if denial is encountered "
	| right |
	(self observee = self site admin) & (aViewSymbol = #login) ifTrue: [^true].
	 right := self site securityManager 
		isUser: self user allowedTo: (self class updateRightSymbolFor:aViewSymbol)
		on: self class name.
	(right not and: [self session adminAllowed]) ifTrue: 
		[self initAdminAccess. 
		^self updateAllowed: aViewSymbol].
	^right