access control
removeAllAccessRightsFor: aWebUserOrGroup on: anObject 
	self site critical:
		[(self accessByObject at: anObject ifAbsent: [^self])
			removeKey: aWebUserOrGroup ifAbsent: [^self] ].