settings
cacheTimeout
	"in seconds, how long cache entry lives until is invalidated"
	"default is one day"
	^self settingsAt: #CacheDuration ifAbsentPut: [24*3600]