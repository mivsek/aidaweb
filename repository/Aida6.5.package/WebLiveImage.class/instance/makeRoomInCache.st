private-caching
makeRoomInCache
	"if cache is full, remove least used images"
	| cached  toRemove |
	self class cache size < self maxCacheSize ifTrue: [^self].
	cached := (SortedCollection 
		withAll: self class cache
		sortBlock: [:a :b | a lastUsed < b lastUsed]) asOrderedCollection.
	self cacheHysteresis timesRepeat:
		[toRemove := cached first.
		toRemove removeFromCache.
		cached removeFirst]