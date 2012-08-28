*Aida
aidaWebAppFor: aSession
	"return an instance of appropriate App class for me. 
	If mobile app class exist, return that for request from mobile device"
	| webApp mobileApp|
	aSession isNil ifTrue: [^nil].
	webApp := aSession webAppFor: self.  "if already registered in a session"
	webApp notNil ifTrue: [^webApp].
	aSession isMobile ifTrue: "for mobile devices try to finf mobile App first"
		[mobileApp := WebMobileApplication newFor: self on: aSession. 
		mobileApp notNil ifTrue: [^aSession addWebApp: mobileApp for: self] ].
	webApp := WebMobileApplication newFor: self on: aSession. 
	webApp := WebApplication newFor: self on: aSession. "find and instantiate a right App for me"
	webApp notNil ifTrue: [^aSession addWebApp: webApp for: self].
	(self isBehavior and: [self allSuperclasses includes: WebApplication]) ifTrue: 
		[^aSession          "standalone App w/o link to domain"
			addWebApp: 
				(self basicNew session: aSession; initialize; setStandaloneApp) 
			for: self. ].
	^nil