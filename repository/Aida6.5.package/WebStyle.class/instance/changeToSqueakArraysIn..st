maintenance
changeToSqueakArraysIn: aFileoutName
	"change method images to sqeak syntax, example: #(12 34 56) to  #(12 34 56)"
	"WebStyle new changeToSqueakArraysIn: 'WebStyle.st' "
	| in out chunk fstream |
	[in := aFileoutName asFilename readStream.
	out := WriteStream on: String new.
	[in atEnd] whileFalse:
		[chunk := in upToAll: '#('. 
		out nextPutAll: chunk. in atEnd not ifTrue: [out nextPutAll: '#(' . in next: 2 ].
		chunk := in upTo: $] . 
		out nextPutAll: chunk. out nextPutAll: ')'].
	] ensure: [in close].
	aFileoutName asFilename delete.
	[fstream := aFileoutName asFilename writeStream.
	fstream nextPutAll: out contents] 
		ensure: [fstream close].
	^out contents