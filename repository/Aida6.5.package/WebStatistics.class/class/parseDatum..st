log analysis
parseDatum: stringDatum 
	"pretvorimo datum iz formata LLLL-MM-DD v date format
	| tmp | 
	 tmp := DelimitedFile new. 
	Transcript show: (tmp parseDatum: '1999-12-11') printString ; cr  
	"

	| datumStream leto mesec dan |
	datumStream := (stringDatum copyReplaceAll: '-' with: ' ') readStream.
	leto := (self  parseWords: datumStream) asNumber.
	mesec := (self  parseWords: datumStream) asNumber.
	dan := (self  parseWords: datumStream) asNumber.
	^SpDate newDay: dan
		month: mesec
		year: leto