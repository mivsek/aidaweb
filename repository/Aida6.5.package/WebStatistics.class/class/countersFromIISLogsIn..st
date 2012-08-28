log analysis
countersFromIISLogsIn: aDirectoryString

	"return a dictionary (url as key) of counters for urls in all IIS log files in specified directory"
	" WebStatistics countersFromIISLogsIn: 'h:\winnt\system32\logfiles\w3svc8'  "

	| logFiles urlCounters |
	logFiles := aDirectoryString asFilename directoryContents.
	logFiles := SortedCollection
		withAll: logFiles 	sortBlock: [:a :b | a < b].
	urlCounters := Dictionary new.
	logFiles do: [:logFile | 
		" self halt. "
		self countUrlsIn: (aDirectoryString, '\', logFile) to: urlCounters].
	^urlCounters