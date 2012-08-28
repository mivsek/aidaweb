settings
diagnostics: aBoolean
	"if true, diagnostic messages are written on transcript for every web request"
	(aBoolean isKindOf: Boolean) ifFalse: [self error: 'wrong argument'].
	self settings  at: #diagnostics put: aBoolean.