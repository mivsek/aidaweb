odb specific
onFreeSessionFor: anObject remotePerform: aSelector withArgs: argsArray

	| session gsObject result |
	session := self freeSession.
	[	
		self busySessions add: session.
		gsObject := anObject asGSObjectInSession: session .
		result := gsObject remotePerform: aSelector withArgs: argsArray.
		result := gsObject remotePerform: aSelector withArgs: argsArray.
		result := result asLocalObject.
		session commitTransaction
	] valueNowOrOnUnwindDo: 
		[self busySessions remove: session ifAbsent: [].
		 session disconnectST: anObject fromGS: gsObject].
	^result

"WebTransactionMonitor onFreeSessionFor: WebServer default remotePerform: #settings withArgs: #()"