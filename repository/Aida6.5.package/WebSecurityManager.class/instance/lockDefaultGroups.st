initialize-release
lockDefaultGroups
	"to avoid name change or delete of default groups"
	"AIDASite allInstances do: [:each | each securityManager lockDefaultGroups]"
	self allUsersGroup setLocked.
	self adminGroup setLocked.
	self registeredGroup setLocked.
	self activatingGroup setLocked.
	self allUsersGroup setLocked.