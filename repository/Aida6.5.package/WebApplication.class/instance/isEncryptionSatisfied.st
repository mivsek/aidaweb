private-security
isEncryptionSatisfied
	^(self mustBeEncrypted: self session newView) and: [self session lastRequest isEncrypted not]