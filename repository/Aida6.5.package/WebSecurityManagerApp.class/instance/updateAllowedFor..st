printing-access control
updateAllowedFor: aViewSymbol
	^self observee 
		has: self aclForWho
		rightTo: (aclObject updateRightSymbolFor: aViewSymbol)
		on: self aclObject name