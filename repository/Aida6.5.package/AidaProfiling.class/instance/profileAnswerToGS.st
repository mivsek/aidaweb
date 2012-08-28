profiling-gs
profileAnswerToGS
	"AIDASite>>answerTo: profile"
	"AidaProfiling new profileAnswerToVW"

	| site  req |
	site := AIDASite new initialize.
	req := self sampleRequest.
	site answerTo: req. site answerTo: req.
	Smalltalk.ProfMonitor monitorBlock: 
		[1000 timesRepeat: [site answerTo: req]]