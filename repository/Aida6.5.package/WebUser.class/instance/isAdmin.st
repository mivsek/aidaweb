private-obsolete
isAdmin
	"if from Administrators group and escalated to Admin. Default Admin user has always Admin rights"
	"DEPRECIATED!, use #hasAdminRights, #inAdminGroup or #isAdminUser instead! "
	^self hasAdminRights