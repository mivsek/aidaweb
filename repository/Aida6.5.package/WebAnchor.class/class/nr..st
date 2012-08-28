instance creation
nr: aNumber
	"make a web anchor in format 'anchorx', for example 'anchor6'"
	^self new name: ('anchor', aNumber printString).