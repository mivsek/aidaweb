system services
cache
	"a global cache of presentations of domain objects, if they are cached"
	^self systemServices 
		at: #Cache
		ifAbsent: [self addSystemService: (WebCache newOn: self) named: #Cache].