private-css
mobileStyleSheet
	"concatenate all cssMobile* methods together, sorted my method name alphabeticaly! "
	"WebStyle new mobileStyleSheet"
	| stream content |
	stream := WriteStream on: String new.
	self allCssMobileMethods do: [:method | 
		content := self perform: method.
		content notEmpty ifTrue: 
			[stream nextPut: Character cr.
			stream nextPutAll: ('/*', (self class classNameFor: method), ' ', method asString, '*/').
			stream nextPut: Character cr.
			stream nextPutAll: content] ].
	^stream contents