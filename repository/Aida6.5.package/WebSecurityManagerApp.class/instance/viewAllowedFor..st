printing-access control
viewAllowedFor: aViewSymbol
	^self observee 
		has: self aclForWho
		rightTo: (aclObject viewRightSymbolFor: aViewSymbol)
		on: self aclObject name