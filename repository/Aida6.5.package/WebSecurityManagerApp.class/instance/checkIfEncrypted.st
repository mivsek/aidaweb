printing-access control
checkIfEncrypted
	| right  command |
	(self session lastRequest includesQuery: 'right') 
		ifTrue: [right := (self session lastRequest queryAt: 'right')].
	(self session lastRequest includesQuery: 'encrypt') 
 		ifTrue: [command := (self session lastRequest queryAt: 'encrypt')].
	command = 'YES' ifTrue: 
		[self observee 
			setAccessRights: (aclObject encryptSymbolFor: right)
			for: aclForWho 
			on: self aclObject name].
	command = 'NO' ifTrue: 
		[self observee 
			removeAccessRights: (aclObject encryptSymbolFor: right)
			for: aclForWho 
			on: self aclObject name].