access control
removeAllAccessRightsForObject: anObject 
	self site critical:
		[self accessByObject removeKey: anObject ifAbsent: []	].