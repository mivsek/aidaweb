job roles
removeJobRoleNamed: aString
	(self existJobRoleNamed: aString) ifFalse: [^nil].
	(self otherAt: #jobRoles) remove: (self jobRoleNamed: aString)