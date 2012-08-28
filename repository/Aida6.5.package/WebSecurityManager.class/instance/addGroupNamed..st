group management
addGroupNamed: aString
 	"add new group with a specified name. If already exist, error"
	self addGroup: (WebUserGroup new name: aString).