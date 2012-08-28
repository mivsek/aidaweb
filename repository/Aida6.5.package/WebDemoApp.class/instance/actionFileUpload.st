actions
actionFileUpload
	self fileStream notNil ifTrue:
		[self fileStream close]. "while content were already streamed to the file before"