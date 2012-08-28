*Aida
printDotString
	"format and return the number with dots between thousandths:  '3.120.123' "
	| mrds millions thousanths rest text number |
	number := self abs.
	mrds := number // 1000000000.
	millions := (number \\ 1000000000)  // 1000000.
	thousanths := (number \\ 1000000) // 1000.
	rest := (number \\ 1000).
	text := ''.
	mrds > 0 ifTrue: 
		[text := mrds printString, '.', (millions withZeros), '.', 
		(thousanths withZeros), '.', (rest withZeros).
		^text].
	millions > 0 	ifTrue: 
		[text := millions printString, '.', 
		(thousanths withZeros), '.', (rest withZeros).
		^text].
	thousanths > 0 
		ifTrue: 
			[text := thousanths printString, '.', 
			(rest withZeros)]
		ifFalse: [text := rest printString].
	^(self < 0 ifTrue: ['- '] ifFalse: ['']), text

"
-123 printDotString  '- 123'
"