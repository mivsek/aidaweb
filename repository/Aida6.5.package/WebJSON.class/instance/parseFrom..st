parsing
parseFrom: aStream
	self stream: aStream.
	^ self parseAny