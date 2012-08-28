access control
removeAccessRights: anAccessSymbol for: aWebUserOrGroup on: anObject 
	"remove all specified access rigths for specified user or group on specified object"
	| access |
	(anAccessSymbol isKindOf: Array)
		ifTrue: [access := anAccessSymbol ]
		ifFalse: [access := Array with: anAccessSymbol].
	self removeAccessRightArray: access for: aWebUserOrGroup on: anObject