http encoding
convertToWebString: aString
	"converts some special chars in http stream: 
		' ' as '+'
		%xx as appropriate ASCII char
	"
	^HTTPString encodedHTTPFrom: aString 

"AIDASite convertToWebString: '+-% test one' "