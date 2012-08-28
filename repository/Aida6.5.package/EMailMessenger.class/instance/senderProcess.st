private-sending
senderProcess
	[ [true] whileTrue: [self privSendMessage: self queue next reportError: #repeat] ] 
		on: Error do: [:ex | self halt]. "to find the cause of termination"