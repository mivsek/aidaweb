private
readFieldFrom: aStream
	"read one field from delimited file, and convert to appropriate object. Return that object"
	| object stream |
	aStream peek = $" ifTrue:  "start of a text field"
		[object := aStream upTo: $"; upTo: $".
		(self endOfLine: aStream) ifFalse: [aStream upTo: self delimiter].
		^AIDASite convert: object fromCodepage: self codepage].
	stream := WriteStream on: String new.
	[aStream peek = self delimiter or: [self endOfLine: aStream]] 
		whileFalse: [aStream peek isNil ifTrue: [^stream contents]. stream nextPut: aStream next].
	aStream peek = self delimiter ifTrue: [aStream skip: 1].
	object := stream contents. stream close.
	^object
"
	(object includes: $. ) false
		ifTrue:
			[(Date readSloFrom: object readStream) notNil 
				ifTrue: [^Date readSloFrom: object readStream]
				ifFalse: [^object asInteger]]
		ifFalse: [^object asInteger].
"