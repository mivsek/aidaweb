accessing
resetCounter: aSymbol
	"put counter to 0, peekCounter will then return 1"
	self counters at: aSymbol put: 0