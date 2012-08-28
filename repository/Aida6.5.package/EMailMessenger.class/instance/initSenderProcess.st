initialize-release
initSenderProcess
	self sendingLoop notNil ifTrue: [self sendingLoop terminate].
	self sendingLoop: 
		([self senderProcess] forkAt: Processor userBackgroundPriority).