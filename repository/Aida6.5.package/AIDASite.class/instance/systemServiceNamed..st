system services
systemServiceNamed: aSymbol
	"return a system service object with a specified name"
	^self systemServices at: aSymbol asSymbol ifAbsent: [^nil]