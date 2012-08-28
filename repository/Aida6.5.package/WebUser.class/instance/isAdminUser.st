testing
isAdminUser
	"special user with name Admin"
	^self username = 'admin' and: [self name= 'Admin'].