setup parameters
plugins
	"which plugins to load"
	^self otherAt: #plugins ifAbsent: [self defaultPlugins]