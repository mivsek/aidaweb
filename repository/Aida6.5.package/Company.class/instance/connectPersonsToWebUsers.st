import-export
connectPersonsToWebUsers
	"Repository default company connectPersonsToWebUsers"
	self allEmployees do: [:each | 	AIDASite default securityManager addPerson: each]