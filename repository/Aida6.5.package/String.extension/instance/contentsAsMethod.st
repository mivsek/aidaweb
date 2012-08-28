*Aida
contentsAsMethod
	"return a body of method with a literal array with contents of that string"
	| input output |
	input := self readStream.
	output := WriteStream with: String new.
	output nextPutAll: '^#('.
	[input atEnd] whileFalse: [output nextPutAll: input next asInteger asString; nextPut: $ ].
	output nextPutAll: ')'.
	^output contents

" 'visual.cha'contentsAsMethod "