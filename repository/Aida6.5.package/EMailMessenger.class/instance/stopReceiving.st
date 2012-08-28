receiving
stopReceiving
	self receivingLoop notNil ifTrue: [self receivingLoop terminate. self receivingLoop: nil].
"	self mailbox stopFetchingMail. "