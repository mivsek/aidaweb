caching
purgeCache
	"invalidate all timed-out cache entries"
	"run it from time to time, like every day from SwazooServer>>watchogOther"
	self objects associations do: [:assoc |
		assoc value associations do: [:vassoc | vassoc value isTimedOut 
			ifTrue: [self removeObject: assoc key view: vassoc key] ] ]