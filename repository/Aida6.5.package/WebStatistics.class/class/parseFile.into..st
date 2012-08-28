log analysis
parseFile: aFile into: URLCountDictionary 
	| stream besedeVrstice vrstica stevecBesed datum |
	datum := Date today.
	stream := aFile asFilename readStream.
	[stream atEnd] whileFalse: 
		[besedeVrstice := Array new: 15.
		stevecBesed := 2.
		vrstica := (stream throughAll: (String with: Character cr)) readStream.
		[vrstica atEnd] whileFalse: 
			[besedeVrstice at: stevecBesed put: (self parseWords: vrstica) .
			stevecBesed := stevecBesed + 1].
 		datum:= self analyzeAndStoreLine: besedeVrstice 
			into: URLCountDictionary forDate:datum.
		vrstica close.].
	stream close

	" test lines : 
	Xx := Dictionary new.
	WebStatistics parseFile: 'h:\winnt\system32\logfiles\w3svc8\ex990506.log' into: Xx.
	Transcript show: Xx printString
	"