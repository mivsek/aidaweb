private
writeToFile
	| stream |
	[stream := self filename writeStream. stream binary.
	stream nextPutAll: self content]
		ensure: [stream close].
	self refreshTimestamps.