cleanup
removeYourself
	self connection notNil ifTrue: 
		[self connection close].
	self handler notNil ifTrue:
		[self handler connections remove: self ifAbsent: [nil] ].
	self 
		handler: nil; 
		app: nil; 
		view: nil; 
		connection: nil