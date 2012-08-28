private
printString
	^'aWebRealtimeConnection 
	type: ', self type printString, '
	session: ',  (self session notNil ifTrue: [self session id printString] ifFalse: ['nil']), '
	app: ', (self app notNil ifTrue: [self app class name] ifFalse: ['nil']), '
	view: ', self view printString, '
	connection: ', (self isClosed ifFalse: ['open'] ifTrue: ['closed'])