profiling-vw
profilePingToVW
	"AIDASite>>answerTo: profile"
	"AidaProfiling new profilePingToVW"
	| site req resp |
	site := AIDASite new initialize.
	req := self pingRequest.  "/ping.html"
	resp := site answerTo: req. 
	TimeProfiler new 
		samplingInterval: 10; 
		profile: [10000000 timesRepeat: [site answerTo: req]].
	^resp "to check if it is actually as expected"