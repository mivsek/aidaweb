testing
inAdminGroup
	"all from Administrators group are admins, also default Admin user"
	^self groups contains: [:each | each isAdminGroup]