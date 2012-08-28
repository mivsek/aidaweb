access control
accessRightsFor: aWebUserOrGroup on: anObject
	"get the access rights for specified user or group on object  as literal array of 
	rights (e.g. #(#read #write). " 
	^(self accessByObject at: anObject 
		ifAbsent: [^self defaultAccessRights])
			at: aWebUserOrGroup ifAbsent:  [^self defaultAccessRights]