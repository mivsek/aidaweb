testing
testAddingSingleEvent2
	"look at Transcript! "
	| time |
	time := SpTimestamp fromSeconds: (SpTimestamp now asSeconds + 1).
	scheduler at: time runBlock: [self transcript].
	(Delay forSeconds: 2) wait.