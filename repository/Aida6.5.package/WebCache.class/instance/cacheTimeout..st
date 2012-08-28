settings
cacheTimeout: aSeconds
	"in seconds, how long cache entry lives until is invalidated"
	^self settingsAt: #CacheDuration put: aSeconds