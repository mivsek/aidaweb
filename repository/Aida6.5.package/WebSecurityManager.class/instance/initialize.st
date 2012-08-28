initialize-release
initialize
	self initUsers.
	self initGroups.
	self initAccessByObject.
	self initDefaultGroups; lockDefaultGroups.
	self initAdminUser. self initGuestUser. self initExtranetUser.
	self initDefaultAccessRights. self initDemoAccessRights.
	self initAdminAccess. self initGuestAccessRights. self initExtranetAccessRights.