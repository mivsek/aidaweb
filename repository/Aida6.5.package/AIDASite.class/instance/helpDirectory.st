settings-directories
helpDirectory
	" a directory, where help html dokuments are stored. See WebApplication help pages category for 
 	details"
	^self settings  at: #helpDirectory ifAbsentPut: [self defaultHelpDirectory]