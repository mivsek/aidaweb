log analysis
parseFile: aFile 
	"
 	Trenutno opusceno, osnova za parseFile: into:
	WebStatistics parseFile: 'h:\winnt\system32\logfiles\w3svc8\ex990506.log' 
	"

	| logFile stream cr besedeVrstice vrstica stevecBesed |
	cr := Character cr.	" self halt. "
	logFile := aFile asFilename.
	stream := logFile readStream.
	[stream atEnd] whileFalse: 
			[besedeVrstice := Array new: 15.
			stevecBesed := 1.
			vrstica := (stream throughAll: (String with: cr)) readStream.
			[vrstica atEnd] whileFalse: 
					[besedeVrstice at: stevecBesed put: vrstica parseWordsIntoArray.
					stevecBesed := stevecBesed + 1].
			vrstica close].
	stream close