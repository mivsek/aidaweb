codepage converting
properArray: aStringOrByteArray
	"if two byte (or wide) string, convert it to one byte, cut twobyte characters, make them $? "
	| stream |
	aStringOrByteArray class == ByteString ifTrue: [^aStringOrByteArray].
	aStringOrByteArray class == ByteArray ifTrue: [^aStringOrByteArray].
	aStringOrByteArray class == Array ifTrue: [^aStringOrByteArray asByteArray].
	stream := WriteStream on: (String new: aStringOrByteArray size *2).
	aStringOrByteArray "TwoByteArray or WideArray"
		do: [:char | stream nextPut: (char asInteger < 256 ifTrue: [char] ifFalse: [$?])].
	^stream contents