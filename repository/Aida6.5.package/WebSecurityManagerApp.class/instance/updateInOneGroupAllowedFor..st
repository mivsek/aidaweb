printing-access control
updateInOneGroupAllowedFor: aViewSymbol
	^self observee 
		hasUser: self aclForWho
		rightInAnyGroupTo: (aclObject class updateRightSymbolFor: aViewSymbol)
		on: self aclObject name