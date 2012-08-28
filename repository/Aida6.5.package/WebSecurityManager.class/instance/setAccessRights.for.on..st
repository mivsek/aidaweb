access control
setAccessRights: anAccessSymbols for: aWebUserOrGroup on: anObject
	"set the access rights for specified user or group on object. it can be only one right 
	or an literal array of rights (e.g.#(#read #write) ) " 
	| access |
	aWebUserOrGroup isNil ifTrue: [^self error: 'User is nil'].
	access := (anAccessSymbols isKindOf: Array) 
		ifTrue: [anAccessSymbols ] 
		ifFalse: [Array with: anAccessSymbols].
	self accessRightsArray: access for: aWebUserOrGroup on: anObject.