private-importing
methodForFilename: aFilenameString inDirectory: aDirectoryString
	"Compose a method from a relative file name including a path from base directory"
	"Example: '/jquery.mobile/jquery.mobile-1.1.1.css' from directory '/jquery.mobile' is
	 composed to #jQueryMobile111Css"
	| relative in out toSkip first |
	relative := aFilenameString copyFrom: aDirectoryString size+1 to: aFilenameString size.
	in := relative readStream. out := WriteStream on: String new.
	toSkip := #($. $, $- $_ $ $\ $/). first := true.
	[in atEnd] whileFalse:
		[(toSkip includes: in peek)
			ifTrue: 
				[ [toSkip includes: in peek] whileTrue: [in next].
				out nextPut: 
					(first ifTrue: [in next asLowercase] ifFalse: [in next asUppercase]) ]
			ifFalse: [out nextPut: in next asLowercase].
		first := false ].
	^out contents asSymbol

"WebMethodLibrary methodForFilename: '/jquery.mobile/jquery.mobile-1.1.1.css' inDirectory: '/jquery.mobile' "
"WebMethodLibrary methodForFilename: '/jquery.mobile/images/icons-18-black.png' inDirectory: '/jquery.mobile' "