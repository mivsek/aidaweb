private-css
printStyleSheet
	"concatenate all cssPrint* methods together, sorted my method name alphabeticaly! "
	"WebStyle new printStyleSheet"
	| stream content |
	stream := WriteStream on: String new.
	self allCssPrintMethods do: [:method | 
		content := self perform: method.
		content notEmpty ifTrue: 
			[stream nextPut: Character cr.
			stream nextPutAll: ('/*', (self class classNameFor: method), ' ', method asString, '*/').
			stream nextPut: Character cr.
			stream nextPutAll: content] ].
	^stream contents