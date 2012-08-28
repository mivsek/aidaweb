printing-access control
viewInOneGroupAllowedFor: aViewSymbol
	^self observee 
		hasUser: self aclForWho
		rightInAnyGroupTo: (aclObject viewRightSymbolFor: aViewSymbol)
		on: self aclObject name