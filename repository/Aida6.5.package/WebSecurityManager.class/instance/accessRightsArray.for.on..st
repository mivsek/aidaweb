private
accessRightsArray: anAccessSymbols for: aWebUserOrGroup on: anObject
	| objectRights rigthsArray |
	self site critical:
		[objectRights := self accessByObject at: anObject 
			ifAbsent: 
				[self accessByObject at: anObject put: (Dictionary new).
				self accessByObject at: anObject].
		rigthsArray := objectRights at: aWebUserOrGroup 
			ifAbsent:
				[objectRights at: aWebUserOrGroup put: IdentitySet new.
				objectRights at: aWebUserOrGroup].
		rigthsArray addAll: anAccessSymbols].