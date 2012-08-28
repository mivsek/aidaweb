initialize-release
initDefaultGroups
	self addGroup: WebUserGroup newAllUsers.
	self users do: [:user | 	self allUsersGroup addUser: user].
	self addGroup: WebUserGroup newAdmin.
	self addGroup: WebUserGroup newRegistered.
	self addGroup: WebUserGroup newActivating.
	self postInitDefaultGroups.  "override this method for your own default groups"