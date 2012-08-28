private-css
screenStyleSheet
	"concatenate all css* methods together, sorted my method name alphabeticaly! "
	"WebStyle new screenStyleSheet"
	| stream content |
	stream := WriteStream on: String new.
	self allCssScreenMethods do: [:method | 
		content := self perform: method.
		content notEmpty ifTrue: 
			[stream nextPut: Character cr.
			stream nextPutAll: ('/*', (self class classNameFor: method), ' ', method asString, '*/').
			stream nextPut: Character cr.
			stream nextPutAll: content] ].
	stream nextPutAll: self style. . "add any custom styling information, added in instvar #style"
	^stream contents