initialize-release
start
	self stop.
	indexer := [self indexerProcess] forkAt: Processor userBackgroundPriority.