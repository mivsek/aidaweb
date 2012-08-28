maintenance
adjustImageName: aFilenameString
	"left_arrow.gif = leftArrowGif"
	| in out |
	in := aFilenameString readStream. out := WriteStream on: String new.
	in peek isDigit ifTrue: [out nextPut: $a]. "method cannot start with digit!"
	[in atEnd] whileFalse: 
		[(#($- $_ $. ) includes:  in peek) 
			ifTrue: [in next "skip". out nextPut: in next asUppercase] 
			ifFalse: [out nextPut: in next] ].
	^out contents