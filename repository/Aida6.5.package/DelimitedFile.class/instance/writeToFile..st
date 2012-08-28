file writing
writeToFile: aFilenameString
	"export all records to delimited file"
	| stream | 
	self filename: aFilenameString asFilename.
	[stream :=  self filename writeStream.
	records do: [:record | self writeRecord: record to: stream] ]
		ensure: [stream close].
"
|dmFile|
dmFile := DelimitedFile new.
dmFile records 
	add: (Array with: 123 with: 'abcd' with: 345);
	add: (Array with: 234 with: 'CDE' with: 567).
dmFile writeToFile: 'test.dat'
"