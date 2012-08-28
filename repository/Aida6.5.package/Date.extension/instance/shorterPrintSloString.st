*Aida
shorterPrintSloString
	"year in two digits only"
	| yeart |
	yeart := (self year \\ 100) printString. yeart size = 1 ifTrue: [yeart := '0', yeart].
	^self dayOfMonth printString, '.', self monthIndex printString, '.', yeart.

"Date today shorterPrintSloString"