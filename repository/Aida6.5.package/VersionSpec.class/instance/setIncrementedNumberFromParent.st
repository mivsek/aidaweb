initalize-release
setIncrementedNumberFromParent
	"for now, later it should increment last number in string"
	self number: (self parent version number asInteger + 1) printString