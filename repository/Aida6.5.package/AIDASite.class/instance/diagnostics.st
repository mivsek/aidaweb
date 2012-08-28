settings
diagnostics

	"if true, diagnostic messages are written on transcript for every web request"
	^self settings  at: #diagnostics ifAbsentPut: [true].