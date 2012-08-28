private-serving
queueCommand: aWebCommand
	self queue add: aWebCommand.
	self notifyQueueAddition.