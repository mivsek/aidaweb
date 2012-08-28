user management
userNamed: anUsernameString
	" find and return a WebUser with username . Return nil if not found"
	"WebSecurityManager default userNamed: 'mivsek'"
 	(anUsernameString ~= '') ifFalse: [^nil].
	^self users 
		detect: [:user | (user username asLowercase = anUsernameString asLowercase)] ifNone: [nil]