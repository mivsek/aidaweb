user management
userWithName: aNameString surname: aSurnameString
	" find and return a WebUser with name and surname. Return nil if not found"
 	(aNameString ~= '') | (aNameString ~= '') ifFalse: [^nil].
	^self users detect: [:user | 
		(user name asLowercase = aNameString asLowercase) and: 
			[user surname asLowercase = aSurnameString asLowercase]] 
				ifNone: [nil]