private
migrateToEncryptedPasswords
	"if not already"
	self allUsers do: [:each | each password size ~= 48 ifTrue: [each password: each password] ]

"WebSecurityManager allInstances do: [:each | each migrateToEncryptedPasswords] "
"WebSecurityManager hashPassword: 'aaaaaaaaa' "