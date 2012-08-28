*Aida
printDotString
	"Janko Mivsek, 1997"
	"format and return the number with dots between thousandths:  '3.120.123' "
	"1234.12s4 printDotString"
	| denom n quo rem stream |
	stream := WriteStream on: String new.
	denom := 10 raisedTo: scale.
	n := numerator * denom + (denominator bitShift: -1) // denominator.
	numerator < 0 ifTrue:
		[stream nextPut: $-.  n := n negated].
	quo := n // denom. rem := n \\ denom.
	stream nextPutAll: quo printDotString.
	scale > 0 ifTrue:
		[stream nextPut: $, .
		scale timesRepeat:
			[rem := rem*10.
			stream nextPut: (Character digitValue: rem//denom).
			rem := rem \\ denom]].
	^stream contents.