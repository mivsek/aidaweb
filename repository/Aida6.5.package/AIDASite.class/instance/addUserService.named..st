user services
addUserService: aServiceObject named: aSymbol 
	"add a new user service (e.g WebIndex) to the dictionary of services"
	self userServices
		at: aSymbol asSymbol put: aServiceObject