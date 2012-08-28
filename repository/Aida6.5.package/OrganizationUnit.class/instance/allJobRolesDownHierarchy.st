accessing
allJobRolesDownHierarchy
	"incudes me"
	^self allOrgUnits "down hierarchy"
		inject: Set new
		into: [:set :each | set addAll: each allJobRoles; yourself]