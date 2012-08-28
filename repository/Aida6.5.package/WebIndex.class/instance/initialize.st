initialize-release
initialize
	self initIndex.
	self initIndexedObjects.
	self initPopularWords.
	workQueue := nil.
	self start.

"WebIndex default initialize"