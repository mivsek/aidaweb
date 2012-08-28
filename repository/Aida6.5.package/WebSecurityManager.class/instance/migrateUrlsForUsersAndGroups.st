private
migrateUrlsForUsersAndGroups
	"WebSecurityManager allInstances do: [:each | each migrateUrlsForUsersAndGroups] "
	self site isNil ifTrue: [^nil].	
	self users do: [:each | self site urlResolver changeToPreferredUrl: each].
	self groups do: [:each | self site urlResolver changeToPreferredUrl: each].