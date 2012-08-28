accessing
urlFromHalfUrl: aString on: aSession
	| host port hostPort portString protocolString |
	hostPort := self findHostPortOn: aSession.
	host := hostPort key. port := hostPort value.
	portString := (aSession notNil and: [aSession isEncrypted]) 
		ifFalse: [(port = 80) ifTrue: [''] ifFalse: [':', port printString] ]
		ifTrue: [(self site sslPort = 443) ifTrue: [''] ifFalse: [':', self site sslPort printString] ].
	protocolString := (aSession notNil and: [aSession isEncrypted])  
		ifFalse: ['http://'] ifTrue: ['https://'].
	^protocolString, host asLowercase, portString, aString.