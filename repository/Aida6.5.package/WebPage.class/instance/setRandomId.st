initialize-release
setRandomId
	"set a random id of that page to have some unique identifier for page load/unload events"
	self id: ('p', (AIDASite random next * 10000) rounded printString) asSymbol