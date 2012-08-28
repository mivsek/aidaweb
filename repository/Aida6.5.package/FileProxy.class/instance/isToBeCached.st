testing
isToBeCached
	"cache this file or not?"
	^self isCaching or: [self size < self sizeToCache]