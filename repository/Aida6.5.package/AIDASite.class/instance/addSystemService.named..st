system services
addSystemService: aServiceObject named: aSymbol 
	"add a new system service (e.g URLResolver) to the dictionary of services"
	^self systemServices
		at: aSymbol asSymbol put: aServiceObject