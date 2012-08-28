initialize-release
stop
	self indexer notNil ifTrue: [self indexer terminate. indexer := nil].