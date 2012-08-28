settings-directories
defaultHomeDirectory
	"where the image started, but depending on Unix or Win style"
	^(SpEnvironment onWindows ifTrue: ['.\'] ifFalse: ['./'])