accessing
decreaseCounter: aSymbol
	"decrease a current number, for instance if you deleted something with last number"
	(self currentCounter: aSymbol) = 0 ifTrue: [^nil].
	^self counters at: aSymbol put: (self currentCounter: aSymbol) - 1