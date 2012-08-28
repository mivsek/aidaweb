user services
userServiceNamed: aSymbol
	"return a user service object with a specified name"
	^self userServices at: aSymbol asSymbol ifAbsent: [^nil]