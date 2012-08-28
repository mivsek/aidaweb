*Aida
convertToSloveneChars
	"convert csz string with ^ as 'sumnik' to proper unicode string. 
	Only pure ASCII strings are converted!"
	"'Mivs^ek' convertToSloveneChars"
	| in out ch |
"	self class == ByteString ifFalse: [^self]. " "what if there is a mixed string, some unicode already?"
	in := self readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[ch := in next.
		(in peek = $^ ) ifTrue: [(#($c $C $s $S $z $Z) includes: ch) ifTrue: 
			[in next. 
			ch = $c ifTrue: [ch := AIDASite charc]. ch = $C ifTrue: [ch := AIDASite charC].
			ch = $s ifTrue: [ch := AIDASite chars]. 	ch = $S ifTrue: [ch := AIDASite charS].
			ch = $z ifTrue: [ch := AIDASite charz]. ch = $Z ifTrue: [ch := AIDASite charZ] ] ].
		out nextPut: ch].
	^out contents