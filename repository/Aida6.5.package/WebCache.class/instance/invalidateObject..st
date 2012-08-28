caching
invalidateObject: anObject
	"if exist then cache entries for that object are not valid anymore and shall be refreshed"
	self removeObject: anObject