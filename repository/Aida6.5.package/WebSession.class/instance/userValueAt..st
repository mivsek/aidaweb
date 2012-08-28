user values
userValueAt: aSymbol
	"anything you need to share among Apps in that seesion, like last selected stuff, etc."
	^self userValueAt: aSymbol ifAbsent: [nil]