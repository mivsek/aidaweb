private-temp files
tempPath
	"path to the temporary files. By default ./temp on Linux  .\temp on on Windows, relative to where image is started"
	SpEnvironment onUnix ifTrue: [^'./temp'].
	SpEnvironment onWindows ifTrue:  [^'.\temp'].
	^self error: 'unknown operating system'.