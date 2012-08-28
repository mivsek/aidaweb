group management
removeGroup: aWebUserGroup
	"remove group, if exist. If not exist do nothing" 
	self removeGroup: aWebUserGroup ifAbsent: [].