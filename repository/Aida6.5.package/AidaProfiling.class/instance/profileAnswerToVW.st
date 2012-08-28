profiling-vw
profileAnswerToVW
	"AIDASite>>answerTo: profile"
	"AidaProfiling new profileAnswerToVW"
	| site req resp |
	site := AIDASite new initialize. site admin. "to init its URL"
	req := self sampleRequest.  "/admin?view=login  with cookie set"
	resp := site answerTo: req. 
	TimeProfiler new 
		samplingInterval: 10; 
		profile: [1000 timesRepeat: [site answerTo: req]].
	^resp "to check if it is actually as expected"