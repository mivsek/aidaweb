image snapshot
reportImageState
	"AIDASite reportImageState"
"	Transcript cr; show: '** image state: '.
	Transcript cr; show: '   ', HTTPConnection allInstances size printString, ' HTTPCommections'.
	Transcript cr; show: '   ', Socket allInstances size printString, ' Sockets'.
	Transcript cr; show: '   ', Process allInstances size printString, ' Processes'.
	Transcript cr; show: '   ', Semaphore allInstances size printString, ' Semaphores'.
	Transcript cr; show: '   ', Socket registry size printString, ' Socket registry'.
	Transcript cr; show: '   ', StandardFileStream registry size printString, ' StandardFileStream registry'.
	Transcript cr; show: '   ', (ExternalSemaphoreTable unprotectedExternalObjects reject: #isNil) size 
		printString, ' ExternalSemaphoreTable'.
"
