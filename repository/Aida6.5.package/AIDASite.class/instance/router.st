system services
router
	"for routing the web requests to the appropriate request handler depending on url pattern"
	^self systemServices 
		at: #Router
		ifAbsent: [self addSystemService: (WebRouter newOn: self) named: #Router].