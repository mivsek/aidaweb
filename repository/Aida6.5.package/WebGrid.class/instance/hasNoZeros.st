private-testing
hasNoZeros
	"don't show zeros"
	^self settingsAt: #noZeros ifAbsent: [false]