job roles
existJobRoleNamed: aString
	^(self otherAt: #jobRoles ifAbsent: [^false])
		contains: [:each | each name = aString]