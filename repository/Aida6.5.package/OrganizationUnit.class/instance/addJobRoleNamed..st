job roles
addJobRoleNamed: aString
	(self existJobRoleNamed: aString) ifTrue: [^nil].
	self otherAt: #jobRoles ifAbsent: 
		[self otherAt: #jobRoles put: OrderedCollection new].
	(self otherAt: #jobRoles) add: (JobRole new name: aString)