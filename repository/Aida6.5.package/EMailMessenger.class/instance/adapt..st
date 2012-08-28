private-sending
adapt: aString
	"correct some characters to suit the emailer and its bugs"
	"EMailMessenger new adapt: 'BOZ^IC^' convertToSloveneChars"
	| win in out ch |
	win := true. "SpEnvironment onWindows."
	in := aString readStream.
	out := WriteStream on: aString class new.
	[in atEnd] whileFalse:
		[ch := in next.
		win ifTrue: [ch = AIDASite charC ifTrue: [ch := $C] ].  "problem with SMTPClient on Windows"
		out nextPut: ch].
	^out contents