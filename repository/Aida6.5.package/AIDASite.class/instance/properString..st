private-serving
properString: aString 
	"if two byte string, convert it to one byte, cut twobyte characters, make them $? "
	| stream |
	aString class == ByteString ifTrue: [^aString].
	stream := WriteStream on: String new.
	aString 
		do: [:char | stream nextPut: (char asInteger < 256 ifTrue: [char] ifFalse: [$?])].
	^stream contents