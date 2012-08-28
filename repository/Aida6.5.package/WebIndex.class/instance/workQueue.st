private
workQueue
	"all object to be indexed goes in this queue. An indexer process (which is started first time
	someone requests indexing) then index an object in background"

	workQueue isNil ifTrue: 
		[workQueue := SharedQueue new.
		self indexer isNil ifTrue: [self start] ].
	^workQueue.