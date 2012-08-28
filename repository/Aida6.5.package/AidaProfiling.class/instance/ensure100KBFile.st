support
ensure100KBFile
	"dummy .jpg file"
	| fname stream |
	fname := SpFilename named: 'test100K.jpg'.
	fname exists ifFalse:
		[[stream := fname writeStream binary.
		100000 timesRepeat: [stream nextPut: 16rCE] "just something"]
			ensure: [stream close] ].