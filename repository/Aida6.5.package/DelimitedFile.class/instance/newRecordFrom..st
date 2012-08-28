private
newRecordFrom: aStream

	"read one line from delimited file, detect and separate fields and convert to
	appropriate objects into an ordered collection. return that collection"

	| collection field |
	collection := OrderedCollection new.
	[self endOfLine: aStream] whileFalse:
		[field := self readFieldFrom: aStream.
		collection add: field].
	self skipEndOfLine: aStream.
	^collection