statistics
startedTimestamp
	"time and date of last server startup"
	^SpTimestamp fromSeconds:
		(self timestamps at: #Started ifAbsentPut: [SpTimestamp now asSeconds])