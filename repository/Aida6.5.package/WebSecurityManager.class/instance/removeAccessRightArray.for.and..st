private
removeAccessRightArray: anAccessSymbols for: aWebUserOrGroup and: anObject 
	"remove all specified access rigths for specified user or group on specified object"
	self site critical:
		[((self accessByObject at: anObject ifAbsent: [^self])
			at: aWebUserOrGroup ifAbsent: [^self])	removeAll: anAccessSymbols].