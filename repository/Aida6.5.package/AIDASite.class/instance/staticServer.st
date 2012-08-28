system services
staticServer
	"serving static content from files"
	^self systemServices 
		at: #StaticServer
		ifAbsent: 
			[self addSystemService: (WebStaticServer newOn: self) named: #StaticServer.
			self staticServer initialize. "to add it to router and cleanup urlResolver of files"
			self staticServer]