private-composing
composeWebPageFor: aRequest 
	| ctx |
	ctx := self findCreateOrSerializeContextFor: aRequest. "for posts and ajax just find, never create. 
														Req's context is also set"
	ctx  isNil ifTrue: 
		[^WebPage new addText: 'request for unknown or nonexistent context!'; yourself].
	(aRequest isPost and: [aRequest isAjaxRequest not]) "be sure to call that before any post data is accessed! "
		ifTrue: [ctx form registerStreamedFieldsInto: aRequest]. 
	(aRequest isPost and: [self site contextProcesses])
		ifTrue: [ctx startProcess]. "if not already. Always for posts and Ajax"
	ctx isExecutingInOwnProcess 
		ifTrue: 
			[ctx executeRequest: aRequest. "in ctx's process, will actually call our #printWebPageStepTwoFor:"
			ctx first mainSemaphore wait. "until context's process signal end of executing"
			ctx first initMainSemaphore.
			aRequest context isFirst ifTrue: [ctx stopProcess].
			^aRequest context result] "resulted page of context execution"
		ifFalse: [^self composeWebPageStepTwoFor: aRequest].