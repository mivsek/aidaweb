user management
adminUser
	"first admin user, initialy it is with username 'admin'"
	^self users 
		detect: [:each | each isAdminUser] 
		ifNone: [self error: 'Admin user missing?']