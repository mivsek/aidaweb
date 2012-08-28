*Aida
contentsAsMethod
	"return a body of method with a literal array with contents of that file"
	| input output |
	input := self readStream.
	input binary.
	output := WriteStream with: String new.
	output nextPutAll: '^#('.
	[ [input atEnd] whileFalse: [output nextPutAll: input next printString; nextPut: $ ].
	output nextPutAll: ')' ]
		ensure: [input close].
	^output contents

"(SpFilename named: 'source.st') contentsAsMethod "