printing-access control
needsEncryption: aViewSymbol
	^self observee 
		has: self aclForWho
		rightTo: (aclObject encryptSymbolFor: aViewSymbol)
		on: self aclObject name