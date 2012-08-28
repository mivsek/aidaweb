private-temp files
separator
	" '/' or '\' "
	^SpEnvironment onWindows ifTrue: ['\'] ifFalse: ['/'].