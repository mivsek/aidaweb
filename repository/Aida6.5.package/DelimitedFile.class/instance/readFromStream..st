file reading
readFromStream: aStream
	"read a delimited file and convert content to object representation in 'records' collection"
	[aStream atEnd] whileFalse: [self records add: (self newRecordFrom: aStream)]