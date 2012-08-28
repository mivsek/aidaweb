initialize-release
initCounters
	"init a counters dictionary and open a new counter for each already registered object"
	counters := Dictionary new. 
	self allWebPages keys do: [:object | self resetCounterFor: object].