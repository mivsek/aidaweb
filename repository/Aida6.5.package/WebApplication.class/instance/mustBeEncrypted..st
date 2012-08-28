private-security
mustBeEncrypted: aViewSymbol
	"check  if this view must be sent encrypted"
	| right |
"	(self observee = self site admin) & (aViewSymbol = #login) ifTrue: [^true]." "!!!"
	 right := self site securityManager 
		isUser: self user
		allowedTo: (self class encryptSymbolFor: aViewSymbol)
		on: self class name.
	^right