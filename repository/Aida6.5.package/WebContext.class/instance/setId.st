initialize-release
setId
	"set a random number and check it for uniquines"
	id := (AIDASite random next * 100000) truncated.
	(self app contexts includesKey: self id) ifTrue: [^self setId]  "repeat until unique"