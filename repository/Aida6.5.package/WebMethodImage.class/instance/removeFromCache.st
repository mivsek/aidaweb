caching
removeFromCache
	self class cache remove: self ifAbsent: [].
	self removeFromURLResolver.