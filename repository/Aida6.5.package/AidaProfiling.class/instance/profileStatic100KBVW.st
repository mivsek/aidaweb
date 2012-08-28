profiling-vw
profileStatic100KBVW
	"static 100KB file serving"
	"AidaProfiling new profileStatic100KBVW"
	| site req resp |
	self ensure100KBFile.
	site := AIDASite new initialize.
	req := self static100KBRequest.  "/test100K.jpg?id=123456"
	resp := site answerTo: req. req task response: nil. "streaming!"
	TimeProfiler new 
		samplingInterval: 10; 
		profile: [1 timesRepeat: [site answerTo: req.  req task response: nil] ].
	^resp "to check if it is actually as expected"