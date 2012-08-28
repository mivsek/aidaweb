serializing
stringify: anObject
	| stream |
	stream := WriteStream on: String new.
	self new jsonObject: anObject on: stream.
	^stream contents.