settings-directories
defaultHelpDirectory
	^self defaultHomeDirectory, (SpEnvironment onWindows ifTrue: ['\'] ifFalse: ['/']), 'help'