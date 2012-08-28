private
exec: aCommandString
	"execute the command and return result"
	"VW specific"
	SpEnvironment onUnix ifTrue: [^UnixProcess cshOne: aCommandString].
	SpEnvironment onWindows ifTrue: [^WinProcess cshOne: aCommandString].