private
sanitize
	"sanitize input from <script> and similar input to prevent entering XSS and similar malicious code"
	| in out |
	in := ReadStream on: self buffer.
	out := WriteStream on: String new.
	[in atEnd] whileFalse:
		[in peek = $< 
			ifTrue: [out nextPutAll: (self sanitizeTagFrom: in)]
			ifFalse: [out nextPut: in next] ].
	self buffer: out contents