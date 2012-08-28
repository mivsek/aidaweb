file reading
readFrom: aFilenameString
	"read a delimited file and convert content to object representation in 'records' collection"
	| stream | 
	self filename: (SpFilename named: aFilenameString).
	[stream :=  self filename readStream.
	self readFromStream: stream] 
		ensure: [stream close].

"DelimitedFile readFrom: 'm:\geoplin\tarifni\exports\ddnevnik.txt' "