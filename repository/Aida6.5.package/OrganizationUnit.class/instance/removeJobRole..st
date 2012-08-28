job roles
removeJobRole: aJobRole
	self otherAt: #jobRoles ifAbsent: [^nil].
	(self otherAt: #jobRoles) remove: aJobRole ifAbsent: [^nil]