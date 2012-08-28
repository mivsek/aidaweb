private
checkExecutables
	"on Linux for now, wget and unzip needed"
	"Linux specific"
	"WebMethodLibImporter default checkExecutables"
	SpEnvironment onUnix ifFalse: [self error: 'Only Linux supported for now'].
	#('wget' 'unzip') do: [:cmd || result |
		result := self exec: cmd.
		('*Command not found*' match: result)
			ifTrue: [^self error: cmd, ' command not found, is it correctly installed?'].
	]