sending
stopSending
	self sendingLoop notNil ifTrue: 
		[self sendingLoop terminate. 
		self sendingLoop: nil].
	client := nil.
"	queue := nil."