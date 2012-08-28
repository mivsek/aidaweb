*Aida
ensureUnicodeSloveneChars
	"if string has other that unicode slovene chars, try to correct them!"
	"'Miv©ek' ensureUnicodeSloveneChars"
	| in out ch uniSet |
	in := self readStream. out := WriteStream on: String new. uniSet := AIDASite charCszSet. 
	[in atEnd] whileFalse: 
		[ch := in next.
		(ch asInteger < 128 or: [uniSet includes: ch])
			ifTrue: [out nextPut: ch]
			ifFalse: [out nextPut: 
				([(AIDASite convert: (String with: ch) fromCodepage: #'iso-8859-2') first]
					on: Error do: [:ex | ch]) ] ].
	^out contents