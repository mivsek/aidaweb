private-importing
asMethod: aByteArray
	"make a method from this binary cotent. Same as Filename>>contentsAsMethod"
	| input output |
	input := aByteArray asByteArray readStream.
	output := WriteStream with: String new.
	output nextPutAll: '^#['.
	[input atEnd] whileFalse: 
		[output nextPutAll: input next printString; nextPut: $ ].
	output nextPutAll: ']'.
	^output contents

"WebMethodLibImporter new asMethod: 'abcdefg' asByteArray "