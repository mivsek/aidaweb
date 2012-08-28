job roles
jobRoleNamed: aString
	^(self otherAt: #jobRoles ifAbsent: [^nil])
		detect: [:each | each name = aString] ifNone: [nil]