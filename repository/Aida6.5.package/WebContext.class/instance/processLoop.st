private-process
processLoop
	[true] whileTrue:
		[self setIdleState.
		self semaphore wait.
		self setExecutingState.
		self request context: self. "to be sure"
		self result: (self app composeWebPageStepTwoFor: self request).
		self isFirst
			ifTrue: [self first mainSemaphore signal] "for main connection's process to proceed"
			ifFalse: [self parent answer notNil "if any answer, close me and signal parent"
				ifTrue: [self close] "which will also signal interrupted parent context to continue"		ifFalse: [
					self first mainSemaphore signal]] ] "for main connection's process to proceed"